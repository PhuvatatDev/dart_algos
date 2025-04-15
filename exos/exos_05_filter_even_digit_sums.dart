

/// Exercice 05 - Filter integers with even digit sums
/// Author: Phuvatat | Date: 2025-04-15

// Function to return a list of numbers whose digits add up to an even number
List<int> filterEvenDigitSums(List<int> numbers) {
  List<int> result = [];

  for (int number in numbers) {
    // Convert number to list of digits
    List<String> digitAsString = number.toString().split('');
    List<int> digits = digitAsString.map((d) => int.parse(d)).toList();

    // Calculate the sum of the digits
    int sum = digits.reduce((a, b) => a + b);

    // Keep number if digit sum is even
    if (sum % 2 == 0) {
      result.add(number);
    }
  }

  return result;
}

void main() {
  List<int> numbers = [12, 35, 44, 51, 99];
  List<int> filtered = filterEvenDigitSums(numbers);

  print(filtered); // Output: [35, 44, 51, 99]
}




















