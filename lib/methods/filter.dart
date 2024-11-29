//* skipWhile , takeWhile
void main(List<String> args) {
  List<int> numbers = List.generate(50, (index) => index);
  List<int> filter = numbers.skipWhile((value) => value<20).toList();
  print(filter);
}
