// 🧠 Dart Exercise #20 - Group Words by Last Letter
// 📄 File: exos_20_group_by_last_letter.dart

// 🔹 Description:
// This function takes a list of words and returns a Map where each key is the
// last letter of a word, and each value is a list of words ending with that letter.

Map<String, List<String>> groupWordByLastLetter(List<String> words) {
  // Optional: Throw an error if the list is empty
  if (words.isEmpty) {
    throw ArgumentError("The list must not be empty");
  }

  // Create a map to store the result
  Map<String, List<String>> result = {};

  // Loop through each word in the list
  for (final word in words) {
    // Skip empty strings
    if (word.isEmpty) continue;

    // Get the last letter of the word
    String lastLetter = word[word.length - 1];

    // If this letter is not yet a key in the map, initialize it with an empty list
    if (!result.containsKey(lastLetter)) {
      result[lastLetter] = [];
    }

    // Add the word to the corresponding list
    result[lastLetter]!.add(word);
  }

  // Return the grouped map
  return result;
}

// ✅ Example usage
void main() {
  final words = ["apple", "banana", "grape", "pineapple"];
  final grouped = groupWordByLastLetter(words);
  print(grouped);
  // Expected output: {e: [apple, grape, pineapple], a: [banana]}
}
