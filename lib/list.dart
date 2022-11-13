import 'package:dailycook/profile.dart';
import 'package:flutter/material.dart';
import 'package:dailycook/home.dart';
import 'addRecipe.dart';

class Listdata extends StatelessWidget {
  const Listdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("DailyCook"),
            titleTextStyle: TextStyle(fontFamily: "caviarbold"),
            actions: <Widget>[
              IconButton(
                icon: new Icon(Icons.playlist_add_rounded),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddRecipe()));
                },
                iconSize: 40,
              ),
              IconButton(
                icon: Icon(Icons.account_circle_rounded),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfileAcc()));
                },
                iconSize: 40,
              )
            ]),
        body: ListView(
          children: [
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 30)),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Search',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          null;
                        },
                        icon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.brown[700],
                          shadows: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Colors.brown,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  width: 350,
                  height: 130,
                  color: Colors.deepOrange,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Image.asset(
                        "image/makanan.jpg",
                        width: 150,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        width: 170,
                        height: 100,
                        color: Colors.amber[100],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Text(
                              "Nama Masakan",
                              style: TextStyle(
                                  fontFamily: "student", fontSize: 20),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              "Resep",
                              style: TextStyle(
                                  fontFamily: "student", fontSize: 10),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
          ],
        ));
  }
}
