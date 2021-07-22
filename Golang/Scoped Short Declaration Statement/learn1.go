package main

import "fmt"

func main() {
	x := 8
	y := 9
	if product := x * y; product > 60 { //product variable is scoped to this if statement. It cannot be used anywhere else.
		fmt.Println(product, " is greater than 60")
	}
	// fmt.Println(product) //Using variable product outside if will return an error.
}
