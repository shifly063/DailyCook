import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

class RegistForm extends StatelessWidget {
  const RegistForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("DailyCook"),
            titleTextStyle: TextStyle(fontFamily: "caviarbold"),
            actions: <Widget>[
              IconButton(
                icon: new Icon(Icons.account_circle_rounded),
                onPressed: () {
                  null;
                },
                iconSize: 40,
              )
            ]),
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
                      onPressed: () {
                        // RegistForm();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginForm()));
                      },
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
