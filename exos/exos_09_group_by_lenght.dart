
// 📄 exos_09_group_by_length.dart
// 🔍 Group words by their length using a Map<int, List<String>>

/// Groups a list of words by their length.
/// Returns a Map where each key is the word length,
/// and the value is the list of words with that length.
Map<int, List<String>> groupByLength(List<String> words) {
  final Map<int, List<String>> result = {};

  for (var word in words) {
    final int length = word.length;

    // If the key exists, add the word to the list.
    // If not, initialize a new list for that length.
    if (result.containsKey(length)) {
      result[length]!.add(word);
    } else {
      result[length] = [word];
    }
  }

  return result;
}

void main() {
  final words = ["hi", "hello", "dog", "cat", "yo", "yes"];

  final grouped = groupByLength(words);
  print(grouped); // Output: {2: [hi, yo], 5: [hello], 3: [dog, cat, yes]}
}






