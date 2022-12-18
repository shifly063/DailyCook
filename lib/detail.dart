import 'package:dailycook/login.dart';
import 'package:dailycook/profile.dart';
import 'package:flutter/material.dart';
import 'addRecipe.dart';

class DetilRec extends StatelessWidget {
  final Map recipe;

  DetilRec({required this.recipe});

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
                icon: new Icon(Icons.account_circle_rounded),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginForm()));
                },
                iconSize: 40,
              )
            ]),
        body: Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    child: Column(
                      children: [
                        //card
                        Container(
                          width: 350,
                          height: 630,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.7),
                                    blurRadius: 6,
                                    offset: Offset(1, 1))
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  width: 300,
                                  height: 15,
                                  decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(16))),
                                ),
                                Container(
                                  width: 300,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.brown)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange),
                                      ),
                                      Text(
                                        recipe['judul'],
                                        style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20,
                                            fontFamily: "Student"),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  width: 300,
                                  height: 15,
                                  decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(16))),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Container(
                                      height: 200,
                                      width: 290,
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10)),
                                          Row(
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 9)),
                                              Image.network(
                                                recipe['urlimage'],
                                                height: 180,
                                                width: 270,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.all(5),
                                  width: 280,
                                  child: Column(children: [
                                    Text(
                                      recipe['resep'],
                                      style: TextStyle(
                                          color: Colors.brown, fontSize: 10),
                                    )
                                  ]),
                                  decoration: BoxDecoration(
                                      color: Colors.brown[100],
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(5),
                                          top: Radius.circular(5))),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.all(5),
                                  width: 280,
                                  child: Column(children: [
                                    Text(
                                      recipe['keterangan'],
                                      style: TextStyle(
                                          color: Colors.brown, fontSize: 10),
                                    )
                                  ]),
                                  decoration: BoxDecoration(
                                      color: Colors.brown[100],
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(5),
                                          top: Radius.circular(5))),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //_launchURL(recipe['urlimage']);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    width: 280,
                                    height: 35,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10)),
                                            Text(
                                              'Tutorial : ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: "Student"),
                                            ),
                                            Text(
                                              recipe['url'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: "Student"),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(16))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ],
          ),
        ));
  }
}
