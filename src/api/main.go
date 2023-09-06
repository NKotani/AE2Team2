package main

import (
	"log"
	"net/http"
	"os"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"

	"github.com/NKotani/AE2Team2/src/api/database"
	"github.com/NKotani/AE2Team2/src/api/endpoint/auth"
	"github.com/NKotani/AE2Team2/src/api/endpoint/router"
	"github.com/NKotani/AE2Team2/src/api/endpoint/searcher"
	"github.com/NKotani/AE2Team2/src/api/endpoint/todo_list"
)

func main() {
	if gin.Mode() == gin.DebugMode {
		if err := godotenv.Load(".env"); err != nil {
			panic(err)
		}
	}
	database.Initialize()

	r := gin.Default()

	config := cors.DefaultConfig()
	config.AllowHeaders = append(config.AllowHeaders, "Authorization")
	if gin.Mode() == gin.DebugMode {
		config.AllowOrigins = []string{"http://localhost:8080"}
	} else {
		config.AllowOrigins = []string{"https://vgs.shinjiezumi.work"}
	}
	r.Use(cors.New(config))

	// Api
	api := r.Group("/api")
	{
		api.GET("/", func(context *gin.Context) {
			context.JSON(http.StatusOK, gin.H{
				"message": "Vue Go Samples",
			})
		})
		auth.SetupRoute(api)
		searcher.SetupRoute(api)
		router.Init(api)

		// 認証必要なエンドポイント
		api.Use(auth.MiddlewareFunc())
		{
			auth.SetupAuthenticatedRoute(api)
			todo_list.SetupRoute(api)
		}
	}

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	err := r.Run(":" + port)
	if err != nil {
		log.Fatal(err.Error())
	}
}
