void main() {
  List<String> consonants = ['ag', 'zq', 'ba', 'me', 'fp'];
  consonants.sort((a, b) => a.compareTo(b));
  print(consonants);
  String s =
      "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";
  print(meeting(s));
}

String meeting(String s) {
  final List<String> str = s
      .split(';')
      .map((e) => '(${e.split(":").reversed.join(",").toUpperCase()})')
      .toList();
  str.sort((a, b) => a.compareTo(b));
  return str.join();
}
