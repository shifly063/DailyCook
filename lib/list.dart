import 'dart:convert';

import 'detail.dart';
import 'package:dailycook/profile.dart';
import 'package:flutter/material.dart';
import 'addRecipe.dart';
import 'package:http/http.dart';
import 'package:dailycook/services/globals.dart';
import 'package:http/http.dart' as http;
import 'package:dailycook/Services/auth_services.dart';

class Listdata extends StatelessWidget {
  const Listdata({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("DailyCook"),
          titleTextStyle: TextStyle(fontFamily: "caviarbold"),
          actions: <Widget>[
            // TextField(
            //   decoration: InputDecoration(
            //       labelText: 'Email',
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(30),
            //       )),
            //   onChanged: (value) {
            //     judul = value;
            //   },
            // ),
            // IconButton(
            //     onPressed: () => searchPressed(), icon: Icon(Icons.search)),
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
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => ProfileAcc()));
              },
              iconSize: 40,
            )
          ]),
      body: FutureBuilder(
        future: getRecipe(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data['data'].length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetilRec(
                                recipe: snapshot.data['data'][index],
                              )));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 30)),
                              Padding(padding: EdgeInsets.only(top: 20)),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    //card
                                    Container(
                                      width: 300,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.9),
                                                blurRadius: 6,
                                                offset: Offset(1, 1))
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 10)),
                                              Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 10)),
                                                    Image.network(
                                                      snapshot.data['data']
                                                          [index]['urlimage'],
                                                      height: 100,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          //bawah
                                          Column(
                                            children: [
                                              Container(
                                                width: 280,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.brown)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .deepOrange),
                                                    ),
                                                    Text(
                                                      snapshot.data['data']
                                                          [index]['judul'],
                                                      style: TextStyle(
                                                          color: Colors.brown,
                                                          fontSize: 20,
                                                          fontFamily:
                                                              "Student"),
                                                    ),
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .deepOrange),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              //button
                                              Container(
                                                margin: EdgeInsets.all(5),
                                                width: 280,
                                                height: 35,
                                                child: Column(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 5)),
                                                  Text(
                                                    'More',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontFamily: "Student"),
                                                  )
                                                ]),
                                                decoration: BoxDecoration(
                                                    color: Colors.deepOrange,
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            bottom:
                                                                Radius.circular(
                                                                    16))),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return Text("error");
          }
        },
      ),
    );
  }
}

int lengthlist(int big) {
  return big;
}
