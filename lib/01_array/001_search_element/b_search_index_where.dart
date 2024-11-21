int? searchElementFunctional(List<int> list, int target) =>
    list.indexWhere((element) => element == target);

/* Analysis

1. Method `indexWhere()`

- Native Dart method for functional searches.
- Traverses the list implicity
- Return the index of the first element that meets the condition
- If not element is found, returns -1

*/

//* Search with first match
int? searchFirst(List<int> list, int target) => list.firstWhere(
  (element) => element == target, orElse: () => -1);

//* Search with all matches
List<int> searchAll(List<int> list, int target) {
  return list.where((e) => e == target).toList();
}

void main() {
  final List<int> list = List.generate(1000, (index) => index);
  final int target = 789;
  int? result = searchElementFunctional(list, target);
  (result == -1)
      ? print('Element not found')
      : print('Element found at index $result');
}
