import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

final String url = 'http://10.0.2.2:8000/api/receipe';
final String urlUser = 'http://10.0.2.2:8000/api/user';

Future getRecipe() async {
  var response = await http.get(Uri.parse(url));
  print(json.decode(response.body));
  return json.decode(response.body);
}

Future getUser() async {
  var response = await http.get(Uri.parse(urlUser));
  return json.decode(response.body);
}

const String baseURL = "http://10.0.2.2:8000/api/"; //emulator localhost
const Map<String, String> headers = {"Content-Type": "application/json"};

errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    content: Text(text),
    duration: const Duration(seconds: 1),
  ));
}
