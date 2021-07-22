package main

import "fmt"

// Create the function fuelGauge() here
func fuelGauge(fuel int) {
	fmt.Printf("You have %d gallons of fuel left!", fuel)
}

// Create the function calculateFuel() here
func calculateFuel(planet string) int {
	var fuel int
	switch planet {
	case "Venus":
		fuel = 300000
	case "Mercury":
		fuel = 500000
	case "Mars":
		fuel = 700000
	case "Jupiter":
		fuel = 1500000
	default:
		fuel = 0
	}
	return fuel
}

// Create the function greetPlanet() here
func greenPlanet(planet string) {
	fmt.Println("Welcome to ", planet)
}

// Create the function cantFly() here
func cantFly() {
	fmt.Println("We do not have enough fuel to fly there.")
}

// Create the function flyToPlanet() here
func flyToPlanet(planet string, fuel int) int {
	var fuelRemaining, fuelCost int
	fuelRemaining = fuel
	fuelCost = calculateFuel(planet)
	if fuelRemaining > fuelCost {
		greenPlanet(planet)
		fuelRemaining -= fuelCost
	} else if fuelCost > fuelRemaining {
		cantFly()
	}
	return fuelRemaining
}

func main() {
	// Test your functions!
	//fuelGauge(6990)
	//fmt.Println(calculateFuel("Venus"))
	var fuel int
	fuel = 1000000
	// Create `planetChoice` and `fuel`
	planetChoice := "Jupiter"
	// And then liftoff!
	fuel = flyToPlanet(planetChoice, fuel)
	fuelGauge(fuel)
}
