package middlewares

import (
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/cache"
)

func SetCacheHeaders() fiber.Handler {
	return cache.New(cache.Config{})
}
