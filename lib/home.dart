import 'package:dailycook/login.dart';
import 'package:flutter/material.dart';
import 'addRecipe.dart';
import 'package:http/http.dart' as http;
import 'profile.dart';
import 'list.dart';
import 'dart:convert';
import 'searching.dart';
import 'detail.dart';
import 'package:dailycook/Services/auth_services.dart';
import 'package:dailycook/Services/globals.dart';

class Homelist extends StatelessWidget {
  const Homelist(
      {super.key,
      required this.list1,
      required this.list2,
      required this.list3,
      required this.contoh});
  final Map<String, dynamic> list1;
  final Map<String, dynamic> list2;
  final Map<String, dynamic> list3;
  final String contoh;

  @override
  Widget build(BuildContext context) {
    String _judul = '';
    String _resep = '';
    String _keterangan = '';
    String _imageurl =
        'https://s3-ap-southeast-1.amazonaws.com/ekrutassets/home/deploy/ekrut/releases/20210709094712/public/ckeditor_assets/pictures/7941/content_User_Interface_efisien.PNG';
    String _url = '';
    bool search = false;
    String judul = '';
    // final String resep;
    // final String keterangan;
    // final String urlimage;
    // final String url;

    searchPressed() async {
      if (judul.isNotEmpty) {
        http.Response response = await AuthServices.resep(judul);
        Map responseMap = jsonDecode(response.body);
        if (response.statusCode == 200) {
          // print("============================================================");
          // print();
          // print("============================================================");

          _judul = responseMap['data']['judul'];
          _resep = responseMap['data']['resep'];
          _keterangan = responseMap['data']['keterangan'];
          _imageurl = responseMap['data']['urlimage'];
          _url = responseMap['data']['url'];

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Searching(
                    judul: _judul,
                    keterangan: _keterangan,
                    resep: _resep,
                    url: _url,
                    imageurl: _imageurl,
                  )));
        } else {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Listdata()));
        }
      } else {
        errorSnackBar(context, 'enter all required fields');
      }
    }

    String tittle = '';

    // searchPressed() async {
    //   if (_email.isNotEmpty && _password.isNotEmpty) {
    //     http.Response response = await AuthServices.resep(tittle);
    //     Map responseMap = jsonDecode(response.body);
    //     if (response.statusCode == 200) {
    //       Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //             builder: (BuildContext context) => const Homelist(),
    //           ));
    //     } else {
    //       errorSnackBar(context, responseMap.values.first);
    //     }
    //   } else {
    //     errorSnackBar(context, 'enter all required fields');
    //   }
    // }

    ReceipeTrue() async {
      // if (_email.isNotEmpty && _password.isNotEmpty) {
      // http.Response response = await AuthServices.login(_email, _password);
      // Map responseMap = jsonDecode(response.body);
      // if (response.statusCode == 200) {
      //   Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (BuildContext context) => const Homelist(),
      //       ));
      // } else {
      //   errorSnackBar(context, responseMap.values.first);
      // }
      // } else {
      //   errorSnackBar(context, 'not connected');
      // }
    }

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
        body: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("image/beranda.png"),
                    Container(
                      alignment: Alignment.centerRight,
                      height: 50,
                      color: Colors.deepOrange[400],
                      child: Text(
                        "Dailycook akan menyediakan katalog dari berbagai jenis makanan beserta dengan resep dari bahan-bahan masakan yang kamu butuhkan Temukan makanan favoritmu serta kreasikan hidangan dengan cinta !!!",
                        style: TextStyle(
                          fontFamily: "caviarbold",
                          fontSize: 9,
                          color: Colors.yellow[100],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 300,
                            height: 50,
                            child: TextField(
                              onChanged: (value) {
                                judul = value;
                              },
                              decoration: InputDecoration(
                                labelText: 'Search',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              //AuthServices.resep(judul);

                              // showSearch(
                              //     context: context, delegate: SearchUser()
                              //     );
                              if (judul == '') {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Listdata()));
                              } else {
                                searchPressed();
                              }
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
                      height: 240,
                      width: 350,
                      color: Colors.deepOrange[400],
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DetilRec(
                                          recipe: list1['data'],
                                        )));
                              },
                              child: BoxCard(
                                judul: list1['data']['judul'],
                                resep: list1['data']['resep'],
                                keterangan: list1['data']['keterangan'],
                                imgurl: list1['data']['urlimage'],
                                url: list1['data']['url'],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DetilRec(
                                          recipe: list2['data'],
                                        )));
                              },
                              child: BoxCard(
                                judul: list2['data']['judul'],
                                resep: list2['data']['resep'],
                                keterangan: list2['data']['keterangan'],
                                imgurl: list2['data']['urlimage'],
                                url: list2['data']['url'],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DetilRec(
                                          recipe: list3['data'],
                                        )));
                              },
                              child: BoxCard(
                                judul: list3['data']['judul'],
                                resep: list3['data']['resep'],
                                keterangan: list3['data']['keterangan'],
                                imgurl: list3['data']['urlimage'],
                                url: list3['data']['url'],
                              ),
                            )
                          ]),
                    ),
                  ],
                )),
          ],
        ));
  }
}

class BoxCard extends StatelessWidget {
  const BoxCard(
      {super.key,
      required this.judul,
      required this.resep,
      required this.keterangan,
      required this.imgurl,
      required this.url});
  final String judul;
  final String resep;
  final String keterangan;
  final String imgurl;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            //card
            Container(
              width: 100,
              height: 200,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    blurRadius: 6,
                    offset: Offset(1, 1))
              ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: 150,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),
                            // Image.asset(
                            //   "image/makanan.jpg",
                            //   width: 90,
                            // ),
                            Image.network(imgurl),
                            Padding(padding: EdgeInsets.only(top: 5)),
                          ],
                        ),
                      )
                    ],
                  ),
                  //Tengah
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.food_bank_sharp,
                                color: Colors.grey[800],
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text(judul,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: "Student"))
                            ],
                          ),
                          SizedBox(height: 5),
                          Stack(
                            children: [
                              Container(
                                width: 130,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                width: 130,
                                height: 5,
                              ),
                            ],
                          )
                        ],
                      )),
                  //bawah
                  Column(
                    children: [
                      //button + -
                      Container(
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.brown)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(color: Colors.orange),
                              child: Material(
                                color: Colors.transparent,
                              ),
                            ),
                            Text(
                              "a",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(color: Colors.orange),
                              child: Material(
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                      ),
                      //button addToCart
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 140,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(16))),
                        child: Column(children: [
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            'More',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Student"),
                          )
                        ]),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
