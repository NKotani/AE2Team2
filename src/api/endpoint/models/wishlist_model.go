package models

import (
	"fmt"
	"time"

	"github.com/NKotani/AE2Team2/src/api/database"
)

type WishlistFormData struct {
	Name        string `form:"name"`
	Amount      int    `form:"amount"`
	Unit        string `form:"unit"`
	RecipeTitle string `form:"recipeTitle"`
	RecipeUrl   string `form:"recipeUrl"`
}

type WishlistItem struct {
	ID          int       `json:"id" gorm:"column:id"`
	Name        string    `json:"name" gorm:"column:name"`
	Amount      int       `json:"amount" gorm:"column:amount"`
	Unit        string    `json:"unit" gorm:"column:unit"`
	RecipeTitle string    `json:"recipeTitle" gorm:"column:recipeTitle"`
	RecipeUrl   string    `json:"recipeUrl" gorm:"column:recipeUrl"`
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

func AddWishlist(formData *WishlistFormData) (string, error) {
	// -----------------------------------------------------------------------------------------------------
	// DB操作
	// -----------------------------------------------------------------------------------------------------

	var existingItem WishlistItem

	// すべてのフィールドで一致するものを探します。
	err := database.Conn.Table("wishlist").
		Where("name = ? AND amount = ? AND unit = ? AND recipeTitle = ? AND recipeUrl = ?",
			formData.Name, formData.Amount, formData.Unit, formData.RecipeTitle, formData.RecipeUrl).
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
			Name:        formData.Name,
			Amount:      formData.Amount,
			Unit:        formData.Unit,
			RecipeTitle: formData.RecipeTitle,
			RecipeUrl:   formData.RecipeUrl,
		}

		if err := database.Conn.Table("wishlist").Create(&newItem).Error; err != nil {
			return "", err // レコード作成に失敗した場合はエラーを返す
		}
		return "新しいアイテムがWishlistに追加されました", nil
	} else {
		// その他のエラー処理
		// それ以外のエラーが発生した場合
		fmt.Println("Error3:", err)
		return "", err
	}

	// // それ以外のエラーが発生した場合
	// if err != nil && err != gorm.ErrRecordNotFound {
	// 	fmt.Println("Error2:", err) // この行を追加
	// 	return "", err
	// }

	// newItem := WishlistItem{
	// 	Name:        formData.Name,
	// 	Amount:      formData.Amount,
	// 	Unit:        formData.Unit,
	// 	RecipeTitle: formData.RecipeTitle,
	// 	RecipeUrl:   formData.RecipeUrl,
	// }

	// if err := database.Conn.Table("wishlist").Create(&newItem).Error; err != nil {
	// 	return "", err // レコード作成に失敗した場合はエラーを返す
	// }

	// return "新しいアイテムがWishlistに追加されました", nil
}
