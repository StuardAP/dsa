// where(bool Function(String) value)
void main() {
  List<String> names = ['Ana', 'Luis', 'Carlos', 'Maria', 'Alberto'];

  List<String> namesWithA =
      names.where((name) => name.startsWith('A')).toList();
  print(namesWithA);

  List<String> largeNames =
      names.where((element) => element.length > 4).toList();
  print(largeNames);

  List<int> numbers = List.generate(100, (index) => index);
  List<int> evenNumbers = numbers.where((e) => e.isEven).toList();
  print(evenNumbers);
}
