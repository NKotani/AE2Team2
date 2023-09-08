package models

import (
	"fmt"
	"time"

	"github.com/NKotani/AE2Team2/src/api/database"
)

type WishlistJsonData struct {
	Name        string `json:"name"`
	Amount      int    `json:"amount"`
	Unit        string `json:"unit"`
	RecipeTitle string `json:"recipeTitle"`
	RecipeId    int    `json:"recipeId"`
}

type WishlistItem struct {
	ID          int       `json:"id" gorm:"column:id"`
	Name        string    `json:"name" gorm:"column:name"`
	Amount      int       `json:"amount" gorm:"column:amount"`
	Unit        string    `json:"unit" gorm:"column:unit"`
	RecipeTitle string    `json:"recipeTitle" gorm:"column:recipeTitle"`
	RecipeId    int       `json:"recipeId" gorm:"column:recipeId"`
	CreatedAt   time.Time `json:"createdAt" gorm:"column:created_at"`
	UpdatedAt   time.Time `json:"updatedAt" gorm:"column:updated_at"`
}

type WishlistResponseData struct {
	Wishlist []WishlistItem `json:"wishlist"`
}

func GetWishlist() (*WishlistResponseData, error) {
	// -----------------------------------------------------------------------------------------------------
	// DB操作
	// -----------------------------------------------------------------------------------------------------
	var wishlistItems []WishlistItem

	err := database.Conn.Table("wishlist").Find(&wishlistItems).Error
	if err != nil {
		return nil, err
	}

	response := WishlistResponseData{
		Wishlist: wishlistItems,
	}

	return &response, nil
}

func AddWishlist(jsonData *WishlistJsonData) (string, error) {
	// -----------------------------------------------------------------------------------------------------
	// DB操作
	// -----------------------------------------------------------------------------------------------------

	var existingItem WishlistItem

	// すべてのフィールドで一致するものを探します。
	err := database.Conn.Table("wishlist").
		Where("name = ? AND amount = ? AND unit = ? AND recipeTitle = ? AND recipeId = ?",
			jsonData.Name, jsonData.Amount, jsonData.Unit, jsonData.RecipeTitle, jsonData.RecipeId).
		First(&existingItem).Error

	// レコードが既に存在する場合
	if err == nil {
		fmt.Println("Error1:", err) // この行を追加
		return "既に登録されているので追加できません", nil
	}

	// レコードが存在しない場合（これがgorm.ErrRecordNotFoundになる）
	if err.Error() == "record not found" {
		fmt.Println("Error2: record not found") // ログ出力

		newItem := WishlistItem{
			Name:        jsonData.Name,
			Amount:      jsonData.Amount,
			Unit:        jsonData.Unit,
			RecipeTitle: jsonData.RecipeTitle,
			RecipeId:    jsonData.RecipeId,
		}

		if err := database.Conn.Table("wishlist").Create(&newItem).Error; err != nil {
			return "", err // レコード作成に失敗した場合はエラーを返す
		}
		return "買い物リストに追加されました", nil
	} else {
		// その他のエラー処理
		// それ以外のエラーが発生した場合
		fmt.Println("Error3:", err)
		return "", err
	}
}
