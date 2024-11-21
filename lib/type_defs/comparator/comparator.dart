typedef Comparator<T> = int Function(T a, T b);

class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}

void main() {
  //* Basic usage
  Comparator<int> numberComparator;
  numberComparator = (a, b) => a.compareTo(b);

  List<int> numbers = [5, 2, 8, 1, 9];
  numbers.sort(numberComparator);
  print(numbers);

  List<Person> people = [
    Person(name: 'Alice', age: 30),
    Person(name: 'Bob', age: 25),
    Person(name: 'Charlie', age: 35)
  ];

  Comparator<Person> ageCompartor;
  ageCompartor = (a, b) => a.age.compareTo(b.age);

  people.sort(ageCompartor);
  for (var person in people) {
    print('${person.name} is ${person.age} years old.');
  }
}
