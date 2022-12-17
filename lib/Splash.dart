import 'dart:async';
import 'package:dailycook/login.dart';
import 'package:flutter/material.dart';
import 'addRecipe.dart';
import 'package:http/http.dart' as http;
import 'profile.dart';
import 'dart:convert';
import 'searching.dart';
import 'package:dailycook/Services/auth_services.dart';
import 'package:dailycook/Services/globals.dart';
import 'package:dailycook/home.dart';
import 'package:flutter/material.dart';
import 'package:dailycook/home.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Map<String, dynamic> responseMap1 = {"x": "true"};
  Map<String, dynamic> responseMap2 = {"x": "true"};
  Map<String, dynamic> responseMap3 = {"x": "true"};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homelogIn();
    openSplashScreen();
  }

  homelogIn() async {
    http.Response response1 = await AuthServices.resep('Resep Rendang');
    responseMap1 = await jsonDecode(response1.body);
    http.Response response2 = await AuthServices.resep('Resep Rawon');
    responseMap2 = await jsonDecode(response2.body);
    http.Response response3 = await AuthServices.resep('Resep Lapis');
    responseMap3 = await jsonDecode(response3.body);
    //if (response.statusCode == 200) {
    print("============================================================");
    print(responseMap1['data']['judul']);
    print("============================================================");
  }

  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 2);

    return Timer(durasiSplash, () async {
      //pindah ke halaman home
      await Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) {
        homelogIn();
        // print(responseMap1 as Map<String, dynamic>);
        return Homelist(
          list1: responseMap1,
          list2: responseMap2,
          list3: responseMap3,
          contoh: "masuk",
        );
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Image.asset(
          "image/splash.png",
          height: 200,
        ),
      ),
    );
  }
}
