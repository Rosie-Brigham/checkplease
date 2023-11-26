package main

import "fmt"
import "os"
import "unicode"
import "strings"

// Here be the checks
func isEightCharacters(input string) bool {
	return len(input) >= 8
}

func containsUppercase(input string) bool {
	for _, char := range input {
		if unicode.IsUpper(char) {
			return true
		}
	}
	return false
}

func containsLowercase(input string) bool {
	for _, char := range input {
		if unicode.IsLower(char) {
			return true
		}
	}
	return false
}

func containsNumber(input string) bool {
	for _, char := range input {
		if unicode.IsDigit(char) {
			return true
		}
	}
	return false
}

func containsUnderscore(input string) bool {
	return strings.ContainsAny(input, "_")
}

func passwordChecker(password string) bool {
	return isEightCharacters(password) &&
	containsUppercase(password) &&
	containsLowercase(password) &&
	containsNumber(password) &&
	containsNumber(password) &&
	containsUnderscore(password)
}

// This is the main function, that will run by default
func main() {

	args := os.Args
	password := args[1]

	if passwordChecker(password) {
		fmt.Println("Huzzah! You passed the validations")
	} else {
		fmt.Println("Uh oh, try again")	
	}
}