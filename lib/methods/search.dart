//* firstWhere , indexWhere

void main(List<String> args) {
  List<int> values = List.generate(50, (index) => index);
  values.shuffle();
  int target = 20;
  print(values.firstWhere((element) => element == target, orElse: () => -1));
  print(values.indexWhere((element) => element == target));
}
