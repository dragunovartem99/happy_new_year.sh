// Copyright 2005-2023. AI-generated by ChatGPT.
//
// This program is a simple Go example that prints
// the first 10 numbers of the Fibonacci sequence.

package main

import "fmt"

// fibonacci generates the first n Fibonacci numbers.
func fibonacci(n int) []int {
	seq := make([]int, n)
	if n > 0 {
		seq[0] = 0
	}
	if n > 1 {
		seq[1] = 1
	}
	for i := 2; i < n; i++ {
		seq[i] = seq[i-1] + seq[i-2]
	}
	return seq
}

func main() {
	n := 10
	fmt.Printf("First %d Fibonacci numbers:\n", n)
	fmt.Println(fibonacci(n))
}
