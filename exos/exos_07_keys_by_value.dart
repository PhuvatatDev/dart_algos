// 🔹 EXERCICE 09 – Find Keys by Value in a Map

// 🎯 Description:
// Given a Map<String, int> and a target value (int),
// return a list of keys that are associated with that value.

// 📄 Example:
// Input  : {'a': 1, 'b': 2, 'c': 1, 'd': 3}, target = 1
// Output : ['a', 'c']

// ❌ Do not use .where() or .map() blindly unless you understand how they work.

// ✅ Allowed:
// - for loops
// - Map.entries
// - List<String> for storing results

List<String> findKeysByValue(Map<String, int> map, int targetValue) {
  List<String> matchingKeys = [];

  for (final entry in map.entries) {
    if (entry.value == targetValue) {
      matchingKeys.add(entry.key);
    }
  }

  return matchingKeys;
}

void main() {
  final map = {'a': 1, 'b': 2, 'c': 1, 'd': 3};
  final target = 1;
  final result = findKeysByValue(map, target);

  print('Keys with value $target: $result');
}

