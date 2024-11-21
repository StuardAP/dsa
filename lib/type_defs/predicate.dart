typedef Predicate<T> = bool Function(T value);

void main() {
  Predicate<int> isEven;
  isEven = (int number) => number % 2 == 0;
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumber = numbers.where(isEven).toList();
  print(evenNumber);
}
