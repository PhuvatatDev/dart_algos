// 🔹 exos_16_group_words_by_first_letter.dart

/*
Write a function that takes a list of words and returns a Map<String, 
List<String>> where each key is the first letter of the word,
and the value is a list of all words starting with that letter.
*/

Map<String, List<String>> groupWordsByFirstLetter(List<String> words) {
  // Create a map to store the result
  final Map<String, List<String>> result = {};

  // Loop through each word
  for (String word in words) {
    if (word.isEmpty) continue;

    // Convert to lowercase to group 'Apple' and 'apple' together
    String wordStart = word[0].toLowerCase();

    // If the key doesn't exist yet, initialize an empty list
    if (!result.containsKey(wordStart)) {
      result[wordStart] = [];
    }

    // Add the word to the corresponding list
    result[wordStart]!.add(word);
  }

  /// Returns the result of the operation, typically a collection or map
  /// that groups words by their first letter. The structure and content
  /// of `result` depend on the preceding logic, which likely processes
  /// a list of words and organizes them according to their initial character.
  return result;
}

void main() {
  List<String> words = [
    'Apple',
    'apricot',
    'banana',
    'Berry',
    'cherry',
    'Cranberry',
    '',
  ];
  final grouped = groupWordsByFirstLetter(words);
  print(grouped);
}
