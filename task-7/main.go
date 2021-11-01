package main

import (
	"encoding/csv"
	"log"
	"os"

	"github.com/gocolly/colly"
)

func main() {

	fName := "data.csv"
	file, err := os.Create(fName)
	if err != nil {
		log.Fatalf("could not make the file,err :%q", err)
		return
	}
	defer file.Close()
	writer := csv.NewWriter(file)
	defer writer.Flush()

	c := colly.NewCollector(
		colly.AllowedDomains("forbes.com"),
	)
	c.OnHTML("#main-content", func(e *colly.HTMLElement) {
		writer.Write([]string{
			e.ChildText("a"),
			e.ChildText("span"),
		})
	})

	// for i := 0; i < 312; i++ {
	// 	fmt.Printf("scrapping page : %d\n", i)

	c.Visit("https://www.forbes.com/real-time-billionaires/#6ef9dd113d78")
	// }
	log.Printf("scrapping complete")

}
