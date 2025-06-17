
/// 🔹 EXERCISE 21 – Find the Mode from a List
///
/// **Description:**
/// Write a function that takes a list of integers and returns the most frequent value (the *mode*).
/// If there are multiple values with the same highest frequency, return the smallest one.
///
/// **Example:**
/// mode([1, 2, 2, 3, 3]) => 2
/// mode([4, 4, 1, 1, 2]) => 1
/// mode([5, 5, 5, 2, 2, 2]) => 2


int mode(List<int> numbers) {
  // Create a map to store the frequency of each number
  Map<int, int> frequency = {};

  // Count occurrences of each number in the list
  for (int num in numbers) {
    frequency[num] = (frequency[num] ?? 0) + 1;
  }

  // Variables to track the highest frequency and the most frequent number
  int maxCount = 0;
  int mostFrequent = 0;

  // Iterate through the frequency map to find the mode
  for (final entry in frequency.entries) {
    // If this number has a higher frequency, or same frequency but smaller value
    if (entry.value > maxCount || 
       (entry.value == maxCount && entry.key < mostFrequent)) {
      maxCount = entry.value;
      mostFrequent = entry.key;
    }
  }

  // Return the most frequent number (smallest in case of a tie)
  return mostFrequent;
}
