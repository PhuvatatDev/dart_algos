///* exos_15_sum_of_unique_values
// 🧠 This function returns the sum of all integers that appear only once in the list.
int sumOfUniqueValues(List<int> numbers) {
  // Map to store the count of each number
  Map<int, int> countMap = {};

  // Count how many times each number appears
  for (int number in numbers) {
    countMap[number] = (countMap[number] ?? 0) + 1;
  }

  // Initialize the sum of unique values
  int sum = 0;

  // Loop through the map entries
  for (var entry in countMap.entries) {
    // Add the number to the sum if it appears only once
    if (entry.value == 1) {
      sum += entry.key;
    }
  }

  return sum;
}

void main() {
  // Example test case
  List<int> testList = [1, 2, 2, 3, 4, 4, 5];
  print(sumOfUniqueValues(testList)); // Expected output: 9
}
//? pourquoi les couleurs change avec cette extention
// nermale comment 
//! c'est tres important 
//todo: l'extention comprend le terme todo 
//* other comment color 