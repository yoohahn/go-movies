package routes

import (
	"github.com/gofiber/fiber/v2"
)

func RegisterV0(versionGroup fiber.Router) {
	RegisterMovies(versionGroup)
}
