import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

void main(List<String> args) async {
  String url = "http://numbersapi.com/100?json";
  final response = await http.get(Uri.parse(url));
  try {
    if (response.statusCode == 200) {
      final trivia = TriviaModel.fromJson(json.decode(response.body));
      log('$trivia');
    }
  } catch (e) {
    throw SocketException('Without Internert');
  }
}

class TriviaEntity {
  final String text;
  final int number;
  const TriviaEntity({required this.text, required this.number});
}

class TriviaModel extends TriviaEntity {
  TriviaModel({required super.text, required super.number});

  factory TriviaModel.fromJson(Map<String, dynamic> json) {
    return TriviaModel(text: json["text"], number: json["number"]);
  }

  Map<String, dynamic> toJson(TriviaModel model) {
    return {"number": model.number, "text": model.text};
  }

  @override
  String toString() {
    return 'number: $number text: $text';
  }
}
