
// 📄 exos_08_anagram_checker.dart
// 🔍 Check if two strings are anagrams (same letters, different order)

/// Returns true if [str1] and [str2] are anagrams.
/// Ignores uppercase letters and spaces.
bool isAnagram(String str1, String str2) {
  // Normalize: lowercase and remove spaces
  String clean1 = str1.toLowerCase().replaceAll(" ", "");
  String clean2 = str2.toLowerCase().replaceAll(" ", "");

  // Split into characters and sort
  List<String> letters1 = clean1.split('')..sort();
  List<String> letters2 = clean2.split('')..sort();

  // Compare sorted strings
  return letters1.join() == letters2.join();
}

void main() {
  // ✅ Valid anagrams
  print(isAnagram("listen", "silent"));         // true
  print(isAnagram("A gentleman", "Elegant man")); // true

  // ❌ Not anagrams
  print(isAnagram("hello", "world"));           // false
  print(isAnagram("aab", "ab"));                // false
}
