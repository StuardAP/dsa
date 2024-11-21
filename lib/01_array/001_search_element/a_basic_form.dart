//* Basic Form

int searchElement(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i;
    }
  }
  return -1;
}

void main(List<String> args) {
  final List<int> list = List.generate(1000, (index) => index);

  int target = 978;
  int result = searchElement(list, target);
  (result == -1) ? print("Element not found") : print("Element found at index $result");
}
