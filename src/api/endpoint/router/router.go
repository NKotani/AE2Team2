package router

import (
	"github.com/NKotani/AE2Team2/src/api/endpoint/controllers"

	"github.com/gin-gonic/gin"
)

func Init(api *gin.RouterGroup) {
	// テスト
	api.GET("/test", controllers.Test)

	// 検索
	api.POST("/search", controllers.PostRecipe)

	// 買い物リストを取得
	api.GET("/wishlist", controllers.GetWishlist)

	// 買い物リストに追加
	api.POST("/wishlist", controllers.PostWishlist)
}
