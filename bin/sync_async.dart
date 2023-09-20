import 'dart:convert';
import 'package:http/http.dart' as http;
import 'to_do.dart';

Future main() async {
  final objetoMapeado = await fetch();
  print(objetoMapeado.title);
}

Future<ToDo> fetch() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var toDo = ToDo.fromJson(json);
  return toDo;
}

