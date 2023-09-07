package controllers

import (
	"net/http"

	"github.com/NKotani/AE2Team2/src/api/endpoint/models"

	"github.com/gin-gonic/gin"
)

func GetWishlist(c *gin.Context) {
	wishlist, err := models.GetWishlist()
	if err != nil {
		// fmt.Println("Error:", err) // この行を追加
		c.JSON(http.StatusNotFound, gin.H{"error": "レシピが見つかりません"})
		return
	}

	c.JSON(http.StatusOK, wishlist)
}

func PostWishlist(c *gin.Context) {
	var formData *models.WishlistFormData

	// 受信した form-data を構造体にバインド
	if err := c.ShouldBind(&formData); err != nil {
		// fmt.Println("Error:", err) // この行を追加
		c.JSON(http.StatusBadRequest, gin.H{"error": "不正なフォームです"})
		return
	}

	// formData で AddWishlist を呼び出す
	message, err := models.AddWishlist(formData)
	if err != nil {
		// fmt.Println("Error:", err) // この行を追加
		c.JSON(http.StatusNotFound, gin.H{"error": "レシピが見つかりません"})
		return
	}

	if message == "既に登録されているので追加できません" {
		c.JSON(http.StatusBadRequest, gin.H{"error": message})
		return
	}

	c.JSON(http.StatusOK, gin.H{"message": message})
}
