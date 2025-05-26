// 🔹 10 – Find the Most Common First Letter
// This function takes a list of words and returns the most frequent starting letter (case-insensitive).
// If multiple letters have the same frequency, the alphabetically first one is returned.

String mostCommonFirstLetter(List<String> words) {
  // Step 1: Create a map to count each first letter
  final Map<String, int> letterCounts = {};

  for (final word in words) {
    if (word.isEmpty) continue;
    final letter = word[0].toLowerCase(); // Normalize to lowercase
    letterCounts[letter] = (letterCounts[letter] ?? 0) + 1; // Increment count
  }

  // Step 2: Find the most frequent letter
  String mostCommon = '';
  int maxCount = 0;

  for (final entry in letterCounts.entries) {
    final letter = entry.key;
    final count = entry.value;

    // If count is higher, or same count but letter is earlier alphabetically
    if (count > maxCount || (count == maxCount && letter.compareTo(mostCommon) < 0)) {
      mostCommon = letter;
      maxCount = count;
    }
  }

  return mostCommon;
}

// Example usage
 void main() {
  final result = mostCommonFirstLetter(['apple', 'banana', 'apricot', 'blueberry', 'avocado']);
  print(result); // ➜ 'a'
}
