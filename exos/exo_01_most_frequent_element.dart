
/// Exercice 01 - Trouver l'élément le plus fréquent dans une liste
/// Auteur : Phuvatat | Date : 2025-04-04

int mostFrenquentElement(List<int> numbers) {
  // creer une map frequency {}
  Map<int, int> frequency = {};

  // compter la frenquence de chaque element dans numbers
  for (int num in numbers) {
    frequency[num] = (frequency[num] ?? 0) + 1;
  }
  int mostFrequent = numbers[0];
  int maxCount = 0;

  /*La méthode forEach() en Dart sur une Map :
  Elle permet d’exécuter une action pour chaque paire clé-valeur (key, value) de la map.
  */

  frequency.forEach((key, value) {
    if (value > maxCount) {
      maxCount = value;
      mostFrequent = key;
    }
  });
  return mostFrequent;
}

void main() {
  List<int> numbers = [1, 2, 2, 3, 3, 3, 4];
  print(mostFrenquentElement(numbers));
}
