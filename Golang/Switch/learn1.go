package main

import "fmt"

func main() {
	var choice string
	fmt.Println("Good day Sir, What would you like to buy?")
	fmt.Scan(&choice)

	switch choice {
	case "shirt":
		fmt.Println("We have shirts in S and M only.")
	case "polos":
		fmt.Println("We have polos in M, L, and XL.")
	case "sweater":
		fmt.Println("We have sweaters in S, M, L and XL.")
	case "jackets":
		fmt.Println("We have jackets in all sizes.")
	default:
		fmt.Println("Sorry, we dont have those.")
	}
}
