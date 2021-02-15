package middlewares

import "github.com/gofiber/fiber/v2"

func FourOFour() fiber.Handler {
	return func(c *fiber.Ctx) error {
		return c.SendStatus(404)
	}
}
