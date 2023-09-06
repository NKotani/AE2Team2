package todo_list

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/NKotani/AE2Team2/src/api/common"
	"github.com/NKotani/AE2Team2/src/api/database"
	"github.com/NKotani/AE2Team2/src/api/domain/todo"
)

type unFinishTodoUseCase struct{}

func NewUnFinishTodoUseCase() *unFinishTodoUseCase {
	return &unFinishTodoUseCase{}
}

func (s *unFinishTodoUseCase) Execute(c *gin.Context, userID, id uint64) bool {
	repo := todo.NewRepository(database.Conn)
	t := repo.GetById(id)
	if t == nil {
		c.JSON(http.StatusNotFound, gin.H{
			"message": common.NotFound,
		})
		return true
	} else if userID != t.UserId {
		c.JSON(http.StatusForbidden, gin.H{
			"message": common.Forbidden,
		})
		return true
	}

	t.UnFinished()
	repo.Save(t)

	return false
}
