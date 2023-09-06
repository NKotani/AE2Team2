package searcher

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/NKotani/AE2Team2/src/api/usecase/searcher"
)

// Search は検索して結果を返します
func Search(c *gin.Context) {
	q := c.DefaultQuery("q", "")

	res := searcher.NewSearchUseCase().Execute(q)

	c.JSON(http.StatusOK, res)
}
