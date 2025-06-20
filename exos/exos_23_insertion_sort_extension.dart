// 🔹 EXO 23 - Insertion Sort with Extension
// 🧠 Goal: Sort a List<String> without using .sort(), by defining an extension method
// 📦 Algorithm used: Insertion Sort (step-by-step placement of each element)

extension InsertionSortExtension on List<String> {
  // This method can be called directly on any List<String>: e.g. myList.insertionSort()
  List<String> insertionSort() {
    // Create a copy of the list to avoid modifying the original
    List<String> arr = List.from(this);

    // Loop through the list starting from index 1 (we consider the left side already sorted)
    for (int i = 1; i < arr.length; i++) {
      String current = arr[i]; // Element we want to insert
      int j = i - 1;

      // Shift elements to the right until we find the correct place for current
      while (j >= 0 && arr[j].compareTo(current) > 0) {
        arr[j + 1] = arr[j]; // Move arr[j] one position to the right
        j--;
      }

      // Insert the current element at its correct position
      arr[j + 1] = current;
    }

    // Return the sorted copy of the list
    return arr;
  }
}

// ✅ TESTING
void main() {
  List<String> names1 = ['banana', 'apple', 'cherry'];
  List<String> names2 = ['zebra', 'elephant', 'dog', 'cat'];
  List<String> names3 = ['kiwi', 'kiwi', 'apple'];

  print(names1.insertionSort()); // [apple, banana, cherry]
  print(names2.insertionSort()); // [cat, dog, elephant, zebra]
  print(names3.insertionSort()); // [apple, kiwi, kiwi]
}
