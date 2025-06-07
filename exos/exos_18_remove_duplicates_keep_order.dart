
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
  // Output: [3, 5, 1, 9]
  // Explanation:
  // The function removeDuplicatesKeepOrder removes duplicates from the list while keeping the original order.
  // - It uses a Set<int> called 'seen' to track which numbers have already been added.
  // - It iterates through each number in the input list.
  // - If the number hasn't been seen before, it adds it to both 'seen' and the result list.
  // - This ensures each number appears only once, and in the order of their first appearance.
  // For the input [3, 5, 3, 1, 5, 9, 1], the output is [3, 5, 1, 9].
  print(result);
}