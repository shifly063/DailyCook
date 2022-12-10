import 'package:dailycook/login.dart';
import 'package:flutter/material.dart';
import 'addRecipe.dart';
import 'package:dailycook/services/globals.dart';

class ProfileAcc extends StatelessWidget {
  const ProfileAcc({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama;
    final String resep;
    return Scaffold(
      appBar: AppBar(
          title: Text("DailyCook"),
          titleTextStyle: TextStyle(fontFamily: "caviarbold"),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.playlist_add_rounded),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddRecipe()));
              },
              iconSize: 40,
            ),
            IconButton(
              icon: new Icon(Icons.account_circle_rounded),
              onPressed: () {
                null;
              },
              iconSize: 40,
            )
          ]),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.brown[200],
                  width: double.infinity,
                  child: Column(children: [
                    SizedBox(
                      height: 110.0,
                    ),
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage('image/makanan.jpg'),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Pengguna',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                  ]),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                      child: Card(
                          margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                          child: Container(
                              width: 310.0,
                              height: 290.0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.email,
                                          color: Colors.red,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Email",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "Dailycook@gmail.com",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.bookmark,
                                          color: Colors.red,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Recipe",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "10+",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.settings,
                                          color: Colors.red,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Change Password",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "********",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 20)),
                                    ElevatedButton(
                                      child: Text('Logout'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginForm()));
                                      },
                                    ),
                                  ],
                                ),
                              )))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
