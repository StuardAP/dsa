int searchWhile(List<int> list, int target) {
  int index = 0;
  final Iterator<int> iterator = list.iterator;

  while (iterator.moveNext()) {
    if (iterator.current == target) {
      return index;
    }
    index++;
  }

  return -1;
}
/*
✅ Advantages
 - Reduced memory overhead
 - More efficent for large list
 - Direct access without creating new collections

*/
void main(List<String> args) {
  final List<int> list = List.generate(1000000, (index) => index);

  int target = 978678;
  int result = searchWhile(list, target);
  (result == -1) ? print("Element not found") : print("Element found at index $result");
}

