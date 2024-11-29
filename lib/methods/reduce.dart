void main() {
  List<int> numbers = List.generate(50, (index) => index);
  List<int> values = [7, 3, 0, 5, 5, 0, 6, 2];
  print(numbers.reduce((previous, currect) => previous + currect));
  int sum = values.fold(100, (previous, currect) => previous + currect);
  print(sum);
}
