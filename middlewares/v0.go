package middlewares

import "github.com/gofiber/fiber/v2"

func V0Middleware() fiber.Handler {
	return func(c *fiber.Ctx) error {
		c.Set("X-Api-Version", "experimental")
		return c.Next()
	}
}
