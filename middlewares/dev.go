package middlewares

import (
	"fmt"
	"go-movies/consts"

	"github.com/gofiber/fiber/v2"
)

func DevHeaders() fiber.Handler {
	return func(c *fiber.Ctx) error {
		if consts.GetIsLocalDev() {
			msg := fmt.Sprintf("=> %s", c.Path())
			fmt.Println(msg)
		}
		return c.Next()
	}

}
