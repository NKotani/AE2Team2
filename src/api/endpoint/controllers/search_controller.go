package controllers

import (
	"encoding/json"
	"io/ioutil"
	"net/http"

	"github.com/NKotani/AE2Team2/src/api/endpoint/models"

	"github.com/gin-gonic/gin"
)

func PostRecipe(c *gin.Context) {
	// var requestData *models.RequestData

	// if err := c.ShouldBindJSON(&requestData); err != nil {
	// 	c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
	// 	return
	// }

	// リクエストボディを読み込む
	body, err := ioutil.ReadAll(c.Request.Body)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "リクエストボディを読み込めませんでした"})
		return
	}

	// RequestDataオブジェクトを作成
	var requestData *models.RequestData

	// JSONをUnmarshalする
	if err := json.Unmarshal(body, &requestData); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	recipes, err := models.FindRecipe(requestData)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "レシピが見つかりません"})
		return
	}

	c.JSON(http.StatusOK, recipes)
}
