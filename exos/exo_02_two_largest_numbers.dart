/// Exercice 2 : Trouver les deux plus grands nombres dans une liste.
/// Auteur : Phuvatat | Date : 2025-04-06

List<int> twoLargestNumbers(List<int> numbers) {
  // Vérifie que la liste contient au moins deux éléments
  if (numbers.length < 2) {
    throw ArgumentError("La liste doit contenir au moins deux éléments.");
  }

  // Déclaration de deux variables pour stocker les deux plus grands nombres
  int? max1;
  int? max2;

  // Parcours de la liste pour trouver les deux plus grands nombres
  for (int num in numbers) {
    if (max1 == null || num > max1) {
      // Si num est plus grand que max1, il devient le nouveau max1,
      // et l'ancien max1 devient max2
      max2 = max1;
      max1 = num;
    } else if (max2 == null || num > max2) {
      // Sinon, si num est plus grand que max2 (mais pas plus grand que max1),
      // il devient le nouveau max2
      max2 = num;
    }
  }

  // max1 et max2 sont forcément non null ici, on peut les forcer avec !
  return [max1!, max2!];
}

void main() {
  List<int> numbers = [4, 8, 38, 45, 9, 76, 102, 11];
  print(twoLargestNumbers(numbers)); // Exemple de sortie : [102, 76]
}
