/// 🔹 Exercice 06 - Is Pangram
/// 📄 File: exos_06_is_pangram.dart
/// 🔍 Description:
/// Checks if a given string is a pangram (contains every letter of the alphabet at least once).
/// Author: Phuvatat | Date: 2025-04-21

bool isPangram(String words) {
  // Convertit toute la chaîne en minuscules pour éviter de distinguer entre 'A' et 'a'
  words = words.toLowerCase();

  // Vérifie que chaque lettre de l'alphabet ('a' à 'z') est présente dans la chaîne
  return 'abcdefghijklmnopqrstuvwxyz'
      .split('') // Transforme la chaîne en liste de caractères
      .every((letter) => words.contains(letter)); // Vérifie que chaque caractère est présent dans le texte
}

void main() {
  // 🔸 Test 1 : cette phrase contient toutes les lettres de l'alphabet → true
  print(isPangram("The quick brown fox jumps over the lazy dog")); // true

  // 🔸 Test 2 : cette phrase ne contient pas toutes les lettres → false
  print(isPangram("Bonjour tout le monde")); // false
}
