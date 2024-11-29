void main(List<String> args) {
  List<int> values = List.generate(10, (index) => index)..shuffle();
  int sum = values.fold(50, (previous, current) => previous + current);
  print(values.reduce((previous, current) => previous + current));
  print(sum);
  print(values.map((element) => element*2));
}
