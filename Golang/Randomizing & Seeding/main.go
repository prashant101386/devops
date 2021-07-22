package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	amountLeft := rand.Intn(1000) //This generates same random number everytime. Not really RANDOM!!

	fmt.Println("Amount left is: ", amountLeft)

	if amountLeft <= 5000 {
		fmt.Println("What should I do now?")
	} else {
		fmt.Println("Whoa!! what should I spend this on?")
	}
	//In order to truly generate random number use seeding. And provide a unique value everytime to seed to generate the random value.
	//rand.Seed(time.Now().UnixNano())
	//fmt.Println(rand.Intn(100))

	//So now the first example will become as below using Seed method. I think seed only needs to be done once in every code.
	rand.Seed(time.Now().UnixNano())
	newAmountLeft := (rand.Intn(10000)) //Now random number will get generated everytime.

	fmt.Println("Amount left is: ", newAmountLeft)

	if newAmountLeft <= 5000 {
		fmt.Println("What should I do now?")
	} else {
		fmt.Println("Whoa!! what should I spend this on?")
	}
}
