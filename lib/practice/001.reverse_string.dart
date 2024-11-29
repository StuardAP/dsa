void main(List<String> arg) {
  print('BASIC');
  print(basicFrom('puppet'));
  print('FUNCTIONAL');
  print(functionalFrom('white'));
}

String basicFrom(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}

String functionalFrom(String str) => str.split('').reversed.join();
