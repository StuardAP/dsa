void main(List<String> args) {
  String sentence = 'Children play in the park';
  RegExp reg = RegExp(r'\s');
  int count = reg.allMatches(sentence).length;
  print(count);
}

int countSpaces(String str) => RegExp(r'\s').allMatches(str).length;
