// 🔹 EXOS 24 - Reverse Words
// 📄 File: exos_24_reverse_words.dart
//
// 🧠 Description:
// This function takes a sentence (String) and returns a new sentence 
// where the order of the words is reversed, but not the letters within the words.
//
// ✍️ Example:
// reverseWords("I love Dart") → "Dart love I"

String reverseWords(String sentence) {
  // 1️⃣ Split the sentence into a list of words using space as separator
  List<String> words = sentence.split(' ');

  // 2️⃣ Reverse the order of the words
  List<String> reversed = words.reversed.toList();

  // 3️⃣ Join the reversed list back into a sentence with space between words
  String result = reversed.join(' ');

  // 4️⃣ Return the final reversed sentence
  return result;
}

// ✅ Example test
void main() {
  print(reverseWords("I love Dart")); // Output: Dart love I
}
