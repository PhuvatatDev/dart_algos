// 🔹 EXO 22 - Manual Sort Without Using .sort()

// 🚀 GOAL:
// Create a function that returns a sorted version of a list of integers
// WITHOUT using .sort()

// 🔧 Example:
// input: [4, 2, 7, 1]
// output: [1, 2, 4, 7]

List<int> manualSort(List<int> input) {
  // Step 1: Copy the input to avoid modifying the original list
  List<int> arr = List.from(input);

  // Step 2: Loop through the array
  for (int i = 0; i < arr.length - 1; i++) {
    // Assume the current index is the smallest
    int minIndex = i;

    // Step 3: Look for a smaller element in the rest of the array
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    // Step 4: Swap the smallest found with the current element
    if (minIndex != i) {
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }

  // Step 5: Return the sorted list
  return arr;
}

// ✅ TESTING
void main() {
  print(manualSort([4, 2, 7, 1])); // [1, 2, 4, 7]
  print(manualSort([10, 5, 3, 8, 6])); // [3, 5, 6, 8, 10]
  print(manualSort([1, 2, 3])); // [1, 2, 3]
}


//! 🔁 Tri manuel (sans .sort()):
//* Selection Sort	=> Cherche le plus petit et l’échange	
//* Insertion Sort	=> Insère chaque élément à la bonne position	
//* .compareTo()	Permet de trier des String alphabétiquement	