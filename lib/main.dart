import 'package:dailycook/home.dart';
import 'package:dailycook/services/globals.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    getRecipe();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Daily Cook',
        theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            backgroundColor: Colors.amber[100]),
        home: SplashScreenPage()
        //LoginForm()
        );
  }
}
