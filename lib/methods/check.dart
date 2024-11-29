//* any , every
void main(List<String> args) {
  List<String> nombres = ['Ana', 'Luis', 'Carlos'];
  print(nombres.any((nombre) => nombre.length < 4));
  print(nombres.every((nombre) => nombre.length < 6));
}
