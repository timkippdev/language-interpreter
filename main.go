package main

import (
	"os"

	"github.com/timkippdev/language-interpreter/repl"
)

func main() {
	repl.Start(os.Stdin, os.Stdout)
}
