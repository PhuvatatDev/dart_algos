


// exos_12_group_words_by_length.dart

/// Groups a list of words by their length.
/// Returns a Map where the key is the word length,
/// and the value is a list of words with that length.
Map<int, List<String>> groupWordsByLength(List<String> words) {
  // Initialize an empty map to store results
  Map<int, List<String>> result = {};

  // Iterate through each word in the list
  for (var word in words) {
    // Determine the length of the word
    int length = word.length;

    // If this length is not yet a key in the map, initialize it with an empty list
    result[length] ??= [];

    // Add the word to the corresponding list
    result[length]!.add(word);
  }

  // Return the final map
  return result;
}
