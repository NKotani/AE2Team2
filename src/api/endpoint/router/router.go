package router

import (
	"AE2TEAM2/src/api/endpoint/controllers"

	"github.com/gin-gonic/gin"
)

func Init() {
	r := gin.Default()

	// テスト
	r.GET("/test", controllers.Test)

	// 検索
	r.GET("/search", controllers.GetRecipe)

	r.Run()
}
