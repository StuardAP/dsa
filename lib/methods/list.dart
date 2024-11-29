void main(List<String> args) {
  List<String> students = ['Sofia', 'Carla', 'Sandra', 'Rose', 'Electra'];
  List<String> news = ['Joe', 'Carlos'];
  students.insert(0, 'Claudia');
  // students.removeAt(5);
  students.addAll(news);
  print(students);
}
