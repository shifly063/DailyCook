import 'package:dailycook/regist.dart';
import 'package:flutter/material.dart';
import 'package:dailycook/home.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
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
                            labelText: 'User Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
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
                    FloatingActionButton(
                      splashColor: Colors.brown[600],
                      hoverElevation: 20,
                      onPressed: () {
                        RegistForm();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Homelist()));
                      },
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
                    IconButton(
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 30,
                      ),
                      onPressed: null,
                    )
                  ],
                )),
          ],
        ));
  }
}
