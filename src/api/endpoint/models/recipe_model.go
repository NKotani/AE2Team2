package models

import (
	"encoding/json"
	"strconv"
	"strings"

	"github.com/NKotani/AE2Team2/src/api/database"
)

type Condition struct {
	Name   string `json:"name"`
	Amount int    `json:"amount"`
	Unit   string `json:"unit"`
}

type RequestData struct {
	Conditions []Condition `json:"conditions"`
	Quantity   int         `json:"quantity"`
}

type ResponseData struct {
	RequestData RequestData `json:"request_data"`
	Recipes     []Recipe    `json:"recipes"`
}

type Ingredient struct {
	Name   string `json:"name"`
	Amount int    `json:"amount"`
	Unit   string `json:"unit"`
}

type Recipe struct {
	ID                  int          `json:"id"`
	RecipeRank          int          `json:"recipe_rank" gorm:"column:recipeRank"`
	RecipeName          string       `json:"recipe_name" gorm:"column:recipeTitle"`
	FoodImageUrl        string       `json:"recipe_image_url" gorm:"column:foodImageUrl"`
	RecipeCost          string       `json:"recipe_cost" gorm:"column:recipeCost"`
	RecipeIndication    string       `json:"recipei_indication" gorm:"column:recipeIndication"`
	CategoryId          string       `json:"category_id" gorm:"column:categoryId"`
	CategoryName        string       `json:"category_name" gorm:"column:categoryName"`
	ServingSize         int          `json:"serving_size" gorm:"column:serving_size"`
	Ingredients         []Ingredient `json:"ingredients" gorm:"type:json"`
	IngredientsJSON     []byte       `json:"-" gorm:"column:ingredients"`
	RecipeProcesses     []string     `json:"recipe_processes"`
	RecipeProcessesJSON []byte       `json:"-" gorm:"column:recipe"`
}

func FindRecipe(requestData *RequestData) (*ResponseData, error) {
	// -----------------------------------------------------------------------------------------------------
	// DB操作
	// -----------------------------------------------------------------------------------------------------

	var recipes []Recipe
	var response ResponseData

	// 以下の部分でデータベースから条件に一致するレシピを検索
	for _, condition := range requestData.Conditions {
		var matchedRecipes []Recipe

		err := database.Conn.Table("recipes").
			Select("id, recipeRank, recipeTitle, foodImageUrl, recipeCost, recipeIndication, categoryId, categoryName, serving_size, ingredients, recipe").
			Where("JSON_UNQUOTE(JSON_EXTRACT(ingredients, '$[*].name')) LIKE ?", "%"+condition.Name+"%").
			Find(&matchedRecipes).Error

		if err != nil {
			return nil, err
		}

		for i := range matchedRecipes {

			var ingredients []map[string]interface{}
			err := json.Unmarshal(matchedRecipes[i].IngredientsJSON, &ingredients)
			if err != nil {
				return nil, err
			}

			var recipeProcesses []string
			err = json.Unmarshal(matchedRecipes[i].RecipeProcessesJSON, &recipeProcesses)
			if err != nil {
				return nil, err
			}
			matchedRecipes[i].RecipeProcesses = recipeProcesses

			var parsedIngredients []Ingredient
			for _, ingredientMap := range ingredients {
				var ingredient Ingredient
				if name, ok := ingredientMap["name"].(string); ok {
					ingredient.Name = name
				}
				if quantity, ok := ingredientMap["quantity"].(string); ok {
					parsedQuantity, err := strconv.Atoi(quantity)
					if err != nil {
						return nil, err
					}
					ingredient.Amount = parsedQuantity
				}
				if unit, ok := ingredientMap["unit"].(string); ok {
					ingredient.Unit = unit
				}
				parsedIngredients = append(parsedIngredients, ingredient)
			}

			for _, ingredient := range parsedIngredients {
				nameMatches := strings.Contains(ingredient.Name, condition.Name)
				adjustedAmount := float64(ingredient.Amount) / float64(matchedRecipes[i].ServingSize)
				adjustedConditionAmount := float64(condition.Amount) / float64(requestData.Quantity)
				amountMatches := adjustedAmount <= adjustedConditionAmount
				unitMatches := strings.Contains(ingredient.Unit, condition.Unit)

				if nameMatches && unitMatches && amountMatches {
					matchedRecipes[i].Ingredients = parsedIngredients
					exists := false
					for _, existingRecipe := range recipes {
						if existingRecipe.ID == matchedRecipes[i].ID {
							exists = true
							break
						}
					}

					if !exists {
						// 同じレシピが存在しない場合だけ追加
						recipes = append(recipes, matchedRecipes[i])
					}
					break
				}
			}
		}
	}

	response.Recipes = recipes
	response.RequestData = *requestData

	return &response, nil
}
