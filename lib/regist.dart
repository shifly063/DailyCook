import 'package:flutter/material.dart';
import 'login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dailycook/Services/auth_services.dart';
import 'package:dailycook/Services/globals.dart';

class RegistForm extends StatelessWidget {
  RegistForm({Key? key}) : super(key: key);
  String _email = '';
  String _password = '';
  String _name = '';

  @override
  Widget build(BuildContext context) {
    createAccountPressed() async {
      bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(_email);
      if (emailValid) {
        http.Response response =
            await AuthServices.register(_name, _email, _password);
        Map responseMap = jsonDecode(response.body);
        if (response.statusCode == 200) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginForm()));
        } else {
          errorSnackBar(context, responseMap.values.first[0]);
        }
      } else {
        errorSnackBar(context, 'email not valid');
      }
    }

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
                    Image.asset("image/registr.png"),
                    Container(
                      alignment: Alignment.centerRight,
                      height: 50,
                      color: Colors.deepOrange[400],
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: "caviarbold",
                          fontSize: 25,
                          color: Colors.yellow[100],
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'User Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onChanged: (value) {
                          _name = value;
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
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
                    Padding(padding: EdgeInsets.only(top: 10)),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
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
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    FloatingActionButton(
                      splashColor: Colors.brown[600],
                      hoverElevation: 20,
                      onPressed: () => createAccountPressed(),
                      child: Title(
                          color: Colors.deepOrange, child: Text("Regist")),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Sudah Punya Akun?"),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginForm()));
                              },
                              child: Text("Sign In")),
                        ])
                  ],
                )),
          ],
        ));
  }
}
