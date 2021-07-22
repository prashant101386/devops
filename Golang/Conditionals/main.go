package main

import "fmt"

func main() {
	//If ELSE statement example
	yourRequirement := 100000
	vaultAmt := 2534545

	if vaultAmt >= 200000 { //If statement es executed only if if condition is "true" in value
		fmt.Printf("We have got more than $%d in the vault. We are going to need more bags.\n", yourRequirement)
	} else {
		fmt.Println("There is not enough to take the risk. Let's bail.")
	}
	//AND OR operator example
	rightTime := true
	rightPlace := true

	if rightTime && rightPlace {
		fmt.Println("Be patient, we are going in.")
	} else {
		fmt.Println("We're outta here!")
	}

	enoughRobbers := false
	enoughBags := true

	if enoughRobbers || enoughBags {
		fmt.Println("Grab everything!")
	} else {
		fmt.Println("Grab whatever you can!")
	}
	//Not operator example
	readyToGo := true

	if !readyToGo { //Here if condition is false that is why else statement is executed.
		fmt.Println("Start the car!")
	} else {
		fmt.Println("What are we waiting for??")
	}

	//ELSE IF statement example

	position := 3

	if position == 1 {
		fmt.Println("You won the gold!")
	} else if position == 2 {
		fmt.Println("You got the silver medal.")
	} else if position == 3 {
		fmt.Println("Great job on bronze.")
	} else {
		fmt.Println("Sorry, better luck next time?")
	}
}
