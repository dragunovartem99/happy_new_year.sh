# Copyright (c) 2003-2021 OpenAI, Inc.
# This code was AI-generated and may be used and modified freely.

import random

def generate_random_numbers(count, start, end):
	"""
	Generate a list of random integers.

	Args:
		count (int): Number of integers to generate.
		start (int): Lower bound (inclusive).
		end (int): Upper bound (inclusive).

	Returns:
		list: A list of random integers.
	"""
	return [random.randint(start, end) for _ in range(count)]

def print_random_numbers():
	"""Generate and print 10 random numbers between 1 and 100."""
	count = 10
	start, end = 1, 100
	numbers = generate_random_numbers(count, start, end)
	print(f"Generated random numbers: {numbers}")

if __name__ == "__main__":
	print("Welcome to the AI-generated random number generator!")
	print_random_numbers()
