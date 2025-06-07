// 🔹 19 - Longest Consecutive Sequence
// 📄 File: exos_19_longest_consecutive_sequence.dart

/// Returns the length of the longest sequence of consecutive integers in the list.
/// Example: [100, 4, 200, 1, 3, 2] ➜ the sequence [1,2,3,4] ➜ returns 4
int longestConsecutive(List<int> numbers) {
  if (numbers.isEmpty) return 0;

  // Convert list to Set to allow O(1) lookups
  final numberSet = numbers.toSet();
  int maxLength = 0;

  for (var n in numberSet) {
    // Only start a sequence if `n - 1` is not in the set
    if (!numberSet.contains(n - 1)) {
      int currentNum = n;
      int currentLength = 1;

      // Count how long the sequence continues
      while (numberSet.contains(currentNum + 1)) {
        currentNum++;
        currentLength++;
      }

      // Update the maximum length found
      if (currentLength > maxLength) {
        maxLength = currentLength;
      }
    }
  }

  return maxLength;
}

void main() {
  print(longestConsecutive([100, 4, 200, 1, 3, 2])); // ➜ 4
  print(longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 1])); // ➜ 9
  print(longestConsecutive([10, 5, 12, 11, 13])); // ➜ 4
}
