package models

type Ingredient struct {
	Name   string `json:"name"`
	Amount int    `json:"amount"`
	Unit   string `json:"unit"`
}

type Recipe struct {
	ID          int          `json:"id"`
	RecipeName  string       `json:"recipe_name"`
	RecipeImage string       `json:"recipe_image"`
	Ingredients []Ingredient `json:"ingredients" gorm:"type:json"`
}

func FindRecipe(id string) ([]Recipe, error) {
	// -----------------------------------------------------------------------------------------------------
	// DB操作
	// -----------------------------------------------------------------------------------------------------

	// 材料のダミーデータ
	ingredients1 := []Ingredient{
		{Name: "ひき肉", Amount: 200, Unit: "g"},
		{Name: "玉ねぎ", Amount: 1, Unit: "個"},
	}

	ingredients2 := []Ingredient{
		{Name: "魚", Amount: 1, Unit: "匹"},
		{Name: "塩", Amount: 0, Unit: "少々"},
	}

	// レシピのダミーデータ
	recipe1 := Recipe{
		ID:          1,
		RecipeName:  "ハンバーグ",
		RecipeImage: "https://some-image-url",
		Ingredients: ingredients1,
	}

	recipe2 := Recipe{
		ID:          2,
		RecipeName:  "焼き魚",
		RecipeImage: "https://another-image-url",
		Ingredients: ingredients2,
	}

	recipes := []Recipe{recipe1, recipe2}

	// ダミーデータを返す
	return recipes, nil
}
