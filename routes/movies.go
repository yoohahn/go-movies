package routes

import (
	"context"
	"log"
	"time"

	"go-movies/consts"

	"github.com/gofiber/fiber/v2"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type TomatoResult struct {
	Meter       int     `json:"meter,omitempty"`
	Image       string  `json:"image,omitempty"`
	Rating      float64 `json:"rating,omitempty"`
	Reviews     int     `json:"reviews,omitempty"`
	Fresh       int     `json:"fresh,omitempty"`
	Consensus   string  `json:"consensus,omitempty"`
	UserMeter   int     `json:"userMeter,omitempty"`
	UserRating  float64 `json:"userRating,omitempty"`
	UserReviews int64   `json:"userReviews,omitempty"`
}

type Awards struct {
	Wins        int    `json:"wins,omitempty"`
	Nominations int    `json:"nominations,omitempty"`
	Text        string `json:"text,omitempty"`
}

type ImdbResult struct {
	Id     string  `json:"id,omitempty"`
	Rating float64 `json:"rating,omitempty"`
	Votes  int64   `json:"votes,omitempty"`
}

type Movie struct {
	Id         string       `json:"_id,omitempty" bson:"_id"`
	Title      string       `json:"title,omitempty"`
	Year       int          `json:"year,omitempty"`
	Rated      string       `json:"rated,omitempty"`
	Runtime    int          `json:"runtime,omitempty"`
	Director   string       `json:"director,omitempty"`
	Plot       string       `json:"plot,omitempty"`
	Poster     string       `json:"poster,omitempty"`
	MetaCritic int          `json:"metaCritic,omitempty"`
	Type       string       `json:"type,omitempty"`
	Imdb       ImdbResult   `json:"imdb,omitempty"`
	Tomato     TomatoResult `json:"tomtato,omitempty"`
	Awards     Awards       `json:"awards,omitempty"`
}

var collectionName = consts.GetMoviesCollection()

func getFirst(c *fiber.Ctx) error {
	mongoConString, database := consts.GetMongoStrings()
	client, err := mongo.NewClient(options.Client().ApplyURI(mongoConString))
	if err != nil {
		log.Fatal(err)
	}
	ctx, cancelFunc := context.WithTimeout(context.Background(), 10*time.Second)
	err = client.Connect(ctx)
	defer client.Disconnect(ctx)
	defer cancelFunc()

	collection := client.Database(database).Collection(collectionName)

	var movie Movie
	collection.FindOne(context.TODO(), bson.M{}).Decode(&movie)

	return c.JSON(movie)
}

func getAll(c *fiber.Ctx) error {
	mongoConString, database := consts.GetMongoStrings()
	client, err := mongo.NewClient(options.Client().ApplyURI(mongoConString))
	if err != nil {
		log.Fatal(err)
	}
	ctx, cancelFunc := context.WithTimeout(context.Background(), 10*time.Second)
	err = client.Connect(ctx)
	defer client.Disconnect(ctx)
	defer cancelFunc()

	collection := client.Database(database).Collection(collectionName)
	cursor, err := collection.Find(ctx, bson.M{})
	if err != nil {
		log.Fatal(err)
	}

	var movie []Movie
	if err = cursor.All(ctx, &movie); err != nil {
		log.Fatal(err)
	}

	return c.JSON(movie)
}

func RegisterMovies(route fiber.Router) {
	route.Get("/movies", getAll)
	route.Get("/movies/first", getFirst)
}
