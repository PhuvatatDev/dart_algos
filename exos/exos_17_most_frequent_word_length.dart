/*
Write a function that takes a list of words and returns the most common word length found in the list.
If there's a tie, return the smallest length.
*/

int mostFrequentWordlength(List<String> words) {
  // Map to count occurrences of each word length
  final Map<int, int> lengthCounts = {};

  for (String word in words) {
    if (word.isEmpty) continue;
    int len = word.length;
    lengthCounts[len] = (lengthCounts[len] ?? 0) + 1;
  }

  if (lengthCounts.isEmpty) return 0;

  // Find the most frequent length, choosing the smallest in case of a tie
  int maxCount = 0;
  int resultLength = 0;
  for (var entry in lengthCounts.entries) {
    if (entry.value > maxCount ||
        (entry.value == maxCount && entry.key < resultLength)) {
      maxCount = entry.value;
      resultLength = entry.key;
    }
  }
  return resultLength;
}
