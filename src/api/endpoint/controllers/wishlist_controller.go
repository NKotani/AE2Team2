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
	var jsonData *models.WishlistJsonData

	// 受信した JSON を構造体にバインド
	if err := c.ShouldBindJSON(&jsonData); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "不正なJSONデータです"})
		return
	}

	// formData で AddWishlist を呼び出す
	message, err := models.AddWishlist(jsonData)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "レシピが見つかりません"})
		return
	}

	if message == "既に登録されているので追加できません" {
		c.JSON(http.StatusBadRequest, gin.H{"error": message})
		return
	}

	c.JSON(http.StatusOK, gin.H{"message": message})
}
