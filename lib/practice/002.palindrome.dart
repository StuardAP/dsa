void main(List<String> args) {
  String str = 'Anita Lava La Tina';
  print(isPalindromeBasic(str));
  print(isPalindromeSecond(str));
}

bool isPalindromeBasic(String str) {
  String cleaned = str.replaceAll(' ', '').toLowerCase();
  String reversed = cleaned.split('').reversed.join();
  return reversed == cleaned;
}

bool isPalindromeSecond(String str) =>
    (str = str.replaceAll(' ', '').toLowerCase()) ==
    str.split('').reversed.join();
