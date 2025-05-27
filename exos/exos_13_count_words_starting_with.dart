
// exos_13_count_words_starting_with.dart

/// Counts how many words start with the given letter (case-insensitive)
int countWordsStartingWith(List<String> words, String letter) {
  // Variable to store the final count
  int result = 0;

  // Loop through each word in the list
  for (var word in words) {
    // Check if the word starts with the given letter (case-insensitive)
    if (word.toLowerCase().startsWith(letter.toLowerCase())) {
      result++;
    }
  }

  // Return the total count
  return result;
}
