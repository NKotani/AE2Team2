package controllers

import (
	"go_test/models"
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetRecipe(c *gin.Context) {
	id := c.Param("id")
	recipes, err := models.FindRecipe(id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "Recipe not found"})
		return
	}

	c.JSON(http.StatusOK, recipes)
}
