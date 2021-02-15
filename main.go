package main

import (
	"log"

	"go-movies/middlewares"
	"go-movies/routes"

	"github.com/gofiber/fiber/v2"
)

func main() {
	app := fiber.New()

	app.Use(middlewares.SecurityHeaders())
	app.Use(middlewares.DevHeaders())
	app.Use(middlewares.SetCacheHeaders())

	app.Static("/", "./index.html")

	api := app.Group("/api")
	api.Use(middlewares.ApiBaseHeaders())

	v0 := api.Group("/v0")
	v0.Use(middlewares.V0Middleware())

	routes.RegisterV0(v0)

	app.Use(middlewares.FourOFour())
	log.Fatal(app.Listen(":3003"))
}
