void main(List<String> args) {
  isValid('()[]{}');
}

bool isValid(String s) {
  Map<String, String> pairs = {
    ")": "(",
    "}": "{",
    "]": "[",
  };
  //* Stack for storing openning parentheses ({[
  List<String> stack = [];
  //* Iterate over the string
  for (int i = 0; i < s.length; i++) {
    String current = s[i];
    //* If the current character is an close parenthesis
    if (pairs.containsKey(current)) {
      //* If stack is empty or the top of the stack does not match the current character
      if (stack.isEmpty || stack.last != pairs[current]) {
        return false;
      }
      //* Pop the las openning parenthesis
      stack.removeLast();
    } else {
      //* If the current character is an opening parenthesis, add it to the stack
      stack.add(current);
    }
  }
  return stack.isEmpty;
}
