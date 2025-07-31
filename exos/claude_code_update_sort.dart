/*
🧠 Exercice Dart – Tri manuel sans .sort()
Consigne :
Tu dois trier une List<String> par ordre alphabétique sans utiliser .sort().
Implementation de deux algorithmes de tri :
1. Selection Sort (Tri par sélection)
2. Insertion Sort (Tri par insertion)

Auteur: Phuvatat
Date: 2024
*/

// Tri par sélection : sélectionne le plus petit élément et le place à la bonne position
List<String> selectionSort(List<String> input) {
  // Vérifie si la liste est vide ou contient un seul élément
  if (input.isEmpty || input.length == 1) return List.from(input);
  
  // Copie la liste pour ne pas modifier l'originale
  List<String> arr = List.from(input);

  // Parcourt chaque position du tableau
  for (var i = 0; i < arr.length - 1; i++) {
    // Trouve l'index du plus petit élément dans la partie non triée
    var minIndex = i;
    for (var j = i + 1; j < arr.length; j++) {
      // Compare les chaînes alphabétiquement (case-sensitive)
      if (arr[j].compareTo(arr[minIndex]) < 0) {
        minIndex = j;
      }
    }
    
    // Échange si nécessaire
    if (minIndex != i) {
      var temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }
  return arr;
}

// Tri par insertion : insère chaque élément à sa position correcte
List<String> insertionSort(List<String> input) {
  // Vérifie si la liste est vide ou contient un seul élément
  if (input.isEmpty || input.length == 1) return List.from(input);
  
  // Copie la liste pour ne pas modifier l'originale
  List<String> arr = List.from(input);

  // On commence à l’index 1 car on considère que le premier élément est déjà "trié"
  for (int i = 1; i < arr.length; i++) {
    String current = arr[i]; // élément qu’on veut insérer au bon endroit
    int j = i - 1; // on commence à comparer avec l’élément précédent

    // Tant qu'on n’est pas au début de la liste ET que l’élément précédent est plus grand que "current"
    while (j >= 0 && current.compareTo(arr[j]) < 0) {
      // On décale arr[j] vers la droite (à la position j+1) car il est plus grand que "current"
      arr[j + 1] = arr[j];
      j--; // on continue à comparer vers la gauche
    }

    // À ce stade, j est soit -1 (début), soit sur un élément <= current
    // Donc on insère "current" à la position j + 1
    arr[j + 1] = current;
  }

  return arr;
}

// Extension pour faciliter l'utilisation du tri
extension StringListSort on List<String> {
  List<String> sortedByInsertion() => insertionSort(this);
  List<String> sortedBySelection() => selectionSort(this);
}

void main() {
  // Tests avec différents cas
  print('=== Tests des algorithmes de tri ===\n');
  
  // Cas normal
  List<String> fruits = ['pomme', 'banane', 'cerise', 'abricot', 'kiwi'];
  print('Liste originale: $fruits');
  print('Selection Sort: ${selectionSort(fruits)}');
  print('Insertion Sort: ${insertionSort(fruits)}');
  print('');
  
  // Test avec extension
  print('Avec extension:');
  print('sortedBySelection: ${fruits.sortedBySelection()}');
  print('sortedByInsertion: ${fruits.sortedByInsertion()}');
  print('');
  
  // Cas avec doublons
  List<String> doublons = ['chat', 'chien', 'chat', 'oiseau', 'chien'];
  print('Liste avec doublons: $doublons');
  print('Triée: ${insertionSort(doublons)}');
  print('');
  
  // Cas avec majuscules
  List<String> mixedCase = ['Zebra', 'apple', 'Banana', 'cherry'];
  print('Liste mixte majuscules: $mixedCase');
  print('Triée: ${selectionSort(mixedCase)}');
  print('Note: Les majuscules sont triées avant les minuscules!\n');
  
  // Cas limites
  print('=== Cas limites ===');
  print('Liste vide: ${insertionSort([])}');
  print('Un élément: ${insertionSort(['seul'])}');
  print('Déjà triée: ${selectionSort(['a', 'b', 'c', 'd'])}');
  print('Ordre inverse: ${insertionSort(['z', 'y', 'x', 'w'])}');
}
