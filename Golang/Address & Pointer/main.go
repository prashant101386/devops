package main

import "fmt"

func main() {
	star := "Polaris"

	starAddress := &star //starAddress is pointer to star variable. It stores the address of star variable.

	fmt.Println(starAddress) //Prints the address

	*starAddress = "Sirius" //Dereference the variable value and assign a new value at that pointer. Gives the variable a new value.

	fmt.Println("The actual value of start is", star)
}
