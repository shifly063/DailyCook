import 'package:flutter/material.dart';
import 'list.dart';
import 'addRecipe.dart';
import 'package:http/http.dart' as http;
import 'profile.dart';
import 'dart:convert';
import 'package:dailycook/Services/auth_services.dart';
import 'package:dailycook/Services/globals.dart';

class Homelist extends StatelessWidget {
  const Homelist({super.key});

  @override
  Widget build(BuildContext context) {
    String _email = '';
    String _password = '';
    String _judul = '';
    String _resep = '';
    String _keterangan = '';

    ReceipeTrue() async {
      // if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const Homelist(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
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
                      MaterialPageRoute(builder: (context) => ProfileAcc()));
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
                  children: <Widget>[
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
                              decoration: InputDecoration(
                                labelText: 'Search',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Listdata()));
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
                          children: <Widget>[BoxCard(), BoxCard(), BoxCard()]),
                    ),
                  ],
                )),
          ],
        ));
  }
}

class BoxCard extends StatelessWidget {
  const BoxCard({super.key});

  @override
  Widget build(BuildContext context) {
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
                          Image.asset(
                            "image/makanan.jpg",
                            width: 90,
                          ),
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
                            Text('/10 pcs',
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
                            style: TextStyle(color: Colors.white, fontSize: 12),
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
                      child: Material(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(16)),
                        color: Colors.transparent,
                        // child: InkWell(
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
