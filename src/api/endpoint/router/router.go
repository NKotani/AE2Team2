package router

import (
	"github.com/NKotani/AE2Team2/src/api/endpoint/controllers"

	"github.com/gin-gonic/gin"
)

func Init(api *gin.RouterGroup) {
	// テスト
	api.GET("/test", controllers.Test)

	// 検索
	api.GET("/search", controllers.GetRecipe)
}
