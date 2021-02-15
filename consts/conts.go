package consts

import "os"

var IS_LOCAL_DEV bool = os.Getenv("GO_DEVELOPMENT") == "true"

// First string is Connections string, Second string is Database name
func GetMongoStrings() (string, string) {
	return "mongodb://api:api@localhost:27010", "movies"
}

func GetMoviesCollection() string {
	return "movies"
}

func GetIsLocalDev() bool {
	return IS_LOCAL_DEV
}
