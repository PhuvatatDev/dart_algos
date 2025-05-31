
/*
Write a function that takes a list of integers and returns a new list with all duplicates removed, but
preserving the original order of the elements.
*/
List<int> removeDuplicatesKeepOrder(List<int> nums) {
  final seen = <int>{};
  final result = <int>[];
  for (var num in nums) {
    if (!seen.contains(num)) {
      seen.add(num);
      result.add(num);
    }
  }
  return result;
}

void main() {
  final nums = [3, 5, 3, 1, 5, 9, 1];
  final result = removeDuplicatesKeepOrder(nums);
  print(result); 
}