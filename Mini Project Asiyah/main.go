package main

import (
	"mini_project/middleware"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()
	middleware.Logmiddleware(e)

	e.Logger.Fatal(e.Start(":8000"))
}
