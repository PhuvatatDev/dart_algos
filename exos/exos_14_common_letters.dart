// 🔹 14 - Common Letters Between Two Words
//
// 📄 File: exos_14_common_letters.dart
//
// 🧠 Description:
// Write a function that takes two strings and returns a list of all letters
// they have in common, sorted in alphabetical order.
// Each letter should appear only once in the result.
//
// 🧪 Example:
// commonLetters("flutter", "future") => ["e", "f", "r", "t", "u"]
//
// ⚠️ Constraints:
// - Ignore duplicate letters in each word.
// - Return the result sorted alphabetically.
// - You can use .toSet(), .intersection(), etc.

List<String> commonLetters(String word1, String word2) {
  // Convert both words to sets (to remove duplicates)
  Set<String> set1 = word1.split('').toSet();
  Set<String> set2 = word2.split('').toSet();

  // Create an empty list for the result
  List<String> result = [];

  // Loop through each letter in set1
  for (var letter in set1) {
    // If the letter is also in set2, add it to result
    if (set2.contains(letter)) {
      result.add(letter);
    }
  }

  // Sort the result list
  result.sort();

  return result;
}
