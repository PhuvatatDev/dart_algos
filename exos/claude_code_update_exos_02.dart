/*
✅ Exercice Dart – Deux plus grands nombres
Énoncé :
Write a function that takes a list of integers and returns the two largest numbers in descending order.

Auteur: Phuvatat
Date: 2024
*/

// Fonction principale : trouve les deux plus grands nombres
List<int> twoLargestNum(List<int> numbers) {
  // Vérifier si la liste contient au moins deux nombres
  if (numbers.length < 2) {
    throw ArgumentError("La liste doit contenir au moins deux nombres");
  }

  // Créer deux variables pour contenir les deux valeurs max
  int? max1;
  int? max2;

  // Parcourir la liste et mettre à jour les valeurs max1 et max2
  for (int num in numbers) {
    if (max1 == null || num > max1) {
      // Nouveau maximum trouvé : décaler max1 vers max2
      max2 = max1;
      max1 = num;
    } else if (max2 == null || num > max2) {
      // Nouveau deuxième maximum trouvé
      max2 = num;
    }
  }
  
  // Retourner en ordre décroissant
  return [max1!, max2!];
}

// Version alternative avec tri (moins efficace mais plus simple)
List<int> twoLargestNumSimple(List<int> numbers) {
  if (numbers.length < 2) {
    throw ArgumentError("La liste doit contenir au moins deux nombres");
  }
  
  // Copier et trier la liste en ordre décroissant
  List<int> sorted = List.from(numbers)..sort((a, b) => b.compareTo(a));
  
  // Retourner les deux premiers éléments
  return [sorted[0], sorted[1]];
}

// Version qui gère les cas avec doublons différemment
List<int> twoLargestNumUnique(List<int> numbers) {
  if (numbers.length < 2) {
    throw ArgumentError("La liste doit contenir au moins deux nombres");
  }
  
  // Utiliser un Set pour éliminer les doublons
  Set<int> unique = numbers.toSet();
  
  if (unique.length < 2) {
    throw ArgumentError("La liste doit contenir au moins deux nombres différents");
  }
  
  // Convertir en liste et trier
  List<int> sorted = unique.toList()..sort((a, b) => b.compareTo(a));
  
  return [sorted[0], sorted[1]];
}

void main() {
  print('=== Tests de la fonction twoLargestNum ===\n');
  
  // Cas normal
  List<int> numbers = [4, 1, 9, 3, 7, 9, 2];
  print('Liste originale: $numbers');
  print('Deux plus grands (méthode optimisée): ${twoLargestNum(numbers)}');
  print('Deux plus grands (méthode simple): ${twoLargestNumSimple(numbers)}');
  print('');
  
  // Cas avec doublons
  List<int> withDuplicates = [10, 10, 9, 8, 7];
  print('Liste avec doublons: $withDuplicates');
  print('Deux plus grands (incluant doublons): ${twoLargestNum(withDuplicates)}');
  print('Deux plus grands (uniques seulement): ${twoLargestNumUnique(withDuplicates)}');
  print('');
  
  // Cas avec nombres négatifs
  List<int> withNegatives = [-5, -1, -10, -3, -2];
  print('Liste avec nombres négatifs: $withNegatives');
  print('Deux plus grands: ${twoLargestNum(withNegatives)}');
  print('');
  
  // Cas avec mélange positifs/négatifs
  List<int> mixed = [-5, 0, 10, -3, 5, 15];
  print('Liste mixte: $mixed');
  print('Deux plus grands: ${twoLargestNum(mixed)}');
  print('');
  
  // Cas limites
  print('=== Cas limites ===');
  List<int> twoElements = [5, 3];
  print('Exactement deux éléments: $twoElements → ${twoLargestNum(twoElements)}');
  
  List<int> sameElements = [7, 7];
  print('Deux éléments identiques: $sameElements → ${twoLargestNum(sameElements)}');
  
  // Test des erreurs
  print('\n=== Test des erreurs ===');
  try {
    twoLargestNum([5]);
  } catch (e) {
    print('Erreur avec un seul élément: $e');
  }
  
  try {
    twoLargestNum([]);
  } catch (e) {
    print('Erreur avec liste vide: $e');
  }
  
  try {
    twoLargestNumUnique([5, 5, 5, 5]);
  } catch (e) {
    print('Erreur avec tous éléments identiques (version unique): $e');
  }
}
