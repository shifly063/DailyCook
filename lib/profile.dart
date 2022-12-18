import 'package:dailycook/login.dart';
import 'package:flutter/material.dart';
import 'addRecipe.dart';
import 'package:dailycook/services/globals.dart';

class ProfileAcc extends StatelessWidget {
  const ProfileAcc({super.key, required this.email, required this.nama});
  final String nama;
  final String email;

  @override
  Widget build(BuildContext context) {
    // final String nama;
    // final String email;
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
                  color: Colors.deepOrange,
                  width: double.infinity,
                  child: Column(children: [
                    SizedBox(
                      height: 110.0,
                    ),
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage('image/user.png'),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(nama,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                  ]),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Center(
                          child: Card(
                              margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.brown[200]),
                                  width: 310.0,
                                  height: 100.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.email,
                                              color: Colors.red,
                                              size: 50,
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
                                                    fontSize: 22.0,
                                                  ),
                                                ),
                                                Text(
                                                  email,
                                                  style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.brown,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )))),
                      Container(
                        child: Card(
                            margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.brown[200]),
                                width: 310.0,
                                height: 150.0,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'image/splash.png',
                                        height: 130,
                                      )
                                    ],
                                  ),
                                ))),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
