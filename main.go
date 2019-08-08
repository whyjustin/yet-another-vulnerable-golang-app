package main

import (
	"log"

	"github.com/BurntSushi/toml"
	"github.com/hashicorp/consul/logger"
	"github.com/rs/cors"
)

type Foo struct {
	Bar string
}

func main() {
	log.Printf("This application does nothing...")
	var foo Foo
	if _, err := toml.Decode("Bar = 'Qux'", &foo); err != nil {
		log.Printf("An error has occurred.")
	}
	log.Printf(foo.Bar)
	_ = cors.Options{}
	_ = logger.LevelFilter()
}
