package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	isHeistOn := true
	eludedGuards := rand.Intn(100)
	fmt.Println("// Guards eluded: ", eludedGuards)
	if eludedGuards >= 50 {
		fmt.Println("Looks like you've managed to make it past the guards. Good job, but remember, this is the first step")
	} else {
		isHeistOn = false
		fmt.Println("Plan a better disguise next time?")
	}
	openedVault := rand.Intn(100)
	fmt.Println("// Vault value: ", openedVault)
	if isHeistOn && openedVault >= 70 {
		fmt.Println("Vault is opened. Grab and GO!!")
	} else if isHeistOn {
		fmt.Println("The vault cannot be opened.")
		isHeistOn = false
	}

	leftSafely := rand.Intn(5)
	fmt.Println("// leftSafely value: ", leftSafely)
	if isHeistOn {
		switch leftSafely {
		case 0:
			fmt.Println("Heist failed.")
			isHeistOn = false
		case 1:
			fmt.Println("Forgot to turn off security cameras.")
			isHeistOn = false
		case 2:
			fmt.Println("There is an extra guard that we did not account for.")
			isHeistOn = false
		case 4:
			fmt.Println("Cops caught us.")
			isHeistOn = false
		default:
			fmt.Println("Start the car. We gotta run!! We finally did it.")
		}
		if isHeistOn {
			amtStolen := 10000 + rand.Intn(1000000)
			fmt.Println("Total amount stolen is: ", amtStolen)
		}
	}
	if !isHeistOn {
		fmt.Println("Lets try another day after planning it better")
	}
}
