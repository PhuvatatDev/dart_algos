


// Exercise 03: Find the missing number in an unsorted list of consecutive integers
// Author : Phuvatat | Date : 2025-04-10
//
// Description:
// This function finds the missing number in a list of consecutive integers,
// assuming exactly one number is missing.
// It uses the mathematical formula of the sum of the first N integers
// and subtracts the actual sum of the list to find the missing value.

/// Function to find the missing number in a list
int findMissingNum(List<int> numbers, int n) {
  // Step 1: Calculate the expected sum of numbers from 1 to n
  int expectedSum = n * (n + 1) ~/ 2;

  // Step 2: Calculate the actual sum of the given numbers
  int actualSum = numbers.reduce((a, b) => a + b);

  // Step 3: The missing number is the difference between the expected and actual sums
  return expectedSum - actualSum;
}

void main() {
  // Test case: 1 number is missing from a list of 1 to 7
  List<int> numbers = [1, 2, 4, 5, 6, 7]; // Missing number is 3

  // Call the function and print the result
  print(findMissingNum(numbers, 7)); // Output: 3
}
