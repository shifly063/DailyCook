import 'package:dailycook/regist.dart';
import 'package:flutter/material.dart';
import 'package:dailycook/home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:dailycook/Services/auth_services.dart';
import 'package:dailycook/Services/globals.dart';
import 'profile.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    String _email = '';
    String _password = '';

    loginPressed() async {
      if (_email.isNotEmpty && _password.isNotEmpty) {
        http.Response response = await AuthServices.login(_email, _password);
        Map responseMap = jsonDecode(response.body);
        if (response.statusCode == 200) {
          print(responseMap);
          print(responseMap['user']['id']);
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ProfileAcc(
                  email: responseMap['user']['email'],
                  nama: responseMap['user']['name'],
                ),
              ));
        } else {
          // errorSnackBar(context, responseMap.values.first);
        }
      } else {
        errorSnackBar(context, 'Masukan data dengan benar');
      }
    }

    Future getEmail(_email) async {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return responseMap.values.first;
      }
    }

    bool hide = true;

    void passwordvisible() {}

    return Scaffold(
        appBar: AppBar(
            title: Text("DailyCook"),
            titleTextStyle: TextStyle(fontFamily: "caviarbold"),
            actions: <Widget>[]),
        body: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Image.asset("image/cover.png"),
                    Text(
                      "Create",
                      style: TextStyle(
                          fontFamily: "shakies",
                          fontSize: 50,
                          color: Colors.brown),
                    ),
                    Text(
                      "Your Favorite Dish!",
                      style: TextStyle(
                          fontFamily: "student",
                          fontSize: 25,
                          color: Colors.brown),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.deepOrange[400],
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontFamily: "caviarbold",
                            fontSize: 20,
                            color: Colors.yellow[100]),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onChanged: (value) {
                          _email = value;
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onChanged: (value) {
                          _password = value;
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    FloatingActionButton(
                      splashColor: Colors.brown[600],
                      hoverElevation: 20,
                      onPressed: () => loginPressed(),
                      child:
                          Title(color: Colors.deepOrange, child: Text("Login")),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Belum Punya Akun?"),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => RegistForm()));
                              },
                              child: Text("Sign Up")),
                          Text("or"),
                        ]),
                    // IconButton(
                    //   icon: Icon(
                    //     Icons.facebook,
                    //     color: Colors.blue,
                    //     size: 30,
                    //   ),
                    //   onPressed: null,
                    // ),
                  ],
                )),
          ],
        ));
  }
}
