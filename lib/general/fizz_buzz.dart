/*
* Write a program that displays by console (with a print) the numbers 1 to 100 (both included and with a line break between each line).
 * numbers from 1 to 100 (both included and with a line break between each printout), replacing the following
 * each print), substituting the following:
 * - Multiples of 3 for the word “fizz”.
 * Multiples of 5 for the word “buzz”.
 * - Multiples of 3 and 5 at the same time for the word “fizzbuzz”.
 */

void main() {
  // Generate numbers 1-100 and map them to their FizzBuzz representation
  List.generate(100, (index) => index + 1)
      .map((number) => number.toFizzBuzz())
      .forEach(print);
}

// Extension method to convert a number to its FizzBuzz representation
extension FizzBuzzExtension on int {
  String toFizzBuzz() => switch (this) {
        int n when n % 15 == 0 => 'fizzbuzz',
        int n when n % 3 == 0 => 'fizz',
        int n when n % 5 == 0 => 'buzz',
        _ => toString(),
      };
}
