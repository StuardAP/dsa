// expand , toSet

void main(List<String> args) {
  List<List<int>> fullName = [[2,0],[0,0]];
  List<int> phone = [9, 9, 6, 4, 4, 3, 1, 0, 3];

  print(fullName.expand((part) => part).toList());
  print(phone.toSet().toList());
}
