void add(int a, int b) {
  int sum = a + b;
  show(sum);
}

void show(value) {
  print(value);
}

void main() {
  int cost = 100;
  int tax = 10;
  // Function add;
  // add = (int a, int b) => (a + b);
  // print(add(cost, tax));
  // print(add(90, 15));
  // print(add(67, 20));

  add(cost, tax);
  add(40, 10);
  add(60, 20);
  add(45, 10);
  add(20, 15);
}
