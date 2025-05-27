// exos_11_most_frequent_letter.dart

/// Returns the most frequent alphabetic character in the input string.
/// In case of a tie, the character that comes first alphabetically is returned.
String mostFrequentLetter(String input) {
  // Map to keep track of frequency for each letter
  Map<String, int> frequencyMap = {};

  // Normalize input to lowercase and count only alphabetic characters
  for (var char in input.toLowerCase().split('')) {
    if (RegExp(r'[a-z]').hasMatch(char)) {
      frequencyMap[char] = (frequencyMap[char] ?? 0) + 1;
    }
  }

  // Variables to track the most frequent character
  String? mostFrequent;
  int maxFrequency = 0;

  // Iterate through the map to find the character with the highest frequency
  frequencyMap.forEach((char, frequency) {
    // If frequency is higher OR if same frequency but char is alphabetically earlier
    if (frequency > maxFrequency ||
        (frequency == maxFrequency &&
            (mostFrequent == null || char.compareTo(mostFrequent!) < 0))) {
      mostFrequent = char;
      maxFrequency = frequency;
    }
  });

  // Return the result or empty string if no alphabetic character found
  return mostFrequent ?? '';
}
