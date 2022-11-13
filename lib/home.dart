import 'package:flutter/material.dart';
import 'detail.dart';
import 'list.dart';
import 'addRecipe.dart';
import 'profile.dart';
import 'package:sidebarx/sidebarx.dart';

class Homelist extends StatelessWidget {
  const Homelist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: Drawer(
        //   child: Column(
        //     children: [
        //       Expanded(
        //         flex: 1,
        //         child: Container(
        //           width: MediaQuery.of(context).size.width * 0.85,
        //           child: DrawerHeader(
        //             decoration: BoxDecoration(
        //                 image: DecorationImage(
        //                     image: AssetImage("image/makanan.jpg"),
        //                     fit: BoxFit.cover)),
        //             child: Text(
        //               "Dailycook",
        //               style: TextStyle(
        //                 fontFamily: "shakies",
        //                 fontSize: 30,
        //                 color: Colors.brown,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       Expanded(
        //         flex: 2,
        //         child: ListView(children: [
        //           ListTile(
        //             title: Text("Profile"),
        //             onTap: () {
        //               Navigator.of(context).pop();
        //             },
        //           ),
        //           ListTile(
        //             title: Text("...."),
        //             onTap: () {
        //               Navigator.of(context).pop();
        //             },
        //           ),
        //           ListTile(
        //             title: Text(",,,"),
        //             onTap: () {
        //               Navigator.of(context).pop();
        //             },
        //           )
        //         ]),
        //       )
        //     ],
        //   ),
        // ),
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
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              height: 210,
                              width: 100,
                              color: Colors.amber[100],
                              child: Column(
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Image.asset(
                                    "image/makanan.jpg",
                                    width: 90,
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Text(
                                    "MAKANAN A",
                                    style: TextStyle(
                                        fontFamily: "student",
                                        color: Colors.brown[600]),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(10),
                                    height: 80,
                                    width: 90,
                                    color: Colors.brown[600],
                                    child: Text(
                                      "BELUM ADA RESEP",
                                      style: TextStyle(
                                          fontFamily: "student",
                                          fontSize: 10,
                                          color: Colors.amber[100]),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Container(
                                    height: 25,
                                    width: 90,
                                    color: Colors.brown,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetilRec()));
                                      },
                                      child: Text(
                                        "More",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 210,
                              width: 100,
                              color: Colors.amber[100],
                              child: Column(
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Image.asset(
                                    "image/makanan.jpg",
                                    width: 90,
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Text(
                                    "MAKANAN A",
                                    style: TextStyle(
                                        fontFamily: "student",
                                        color: Colors.brown[600]),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(10),
                                    height: 80,
                                    width: 90,
                                    color: Colors.brown[600],
                                    child: Text(
                                      "BELUM ADA RESEP",
                                      style: TextStyle(
                                          fontFamily: "student",
                                          fontSize: 10,
                                          color: Colors.amber[100]),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Container(
                                    height: 25,
                                    width: 90,
                                    color: Colors.brown,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetilRec()));
                                      },
                                      child: Text(
                                        "More",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 210,
                              width: 100,
                              color: Colors.amber[100],
                              child: Column(
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Image.asset(
                                    "image/makanan.jpg",
                                    width: 90,
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Text(
                                    "MAKANAN A",
                                    style: TextStyle(
                                        fontFamily: "student",
                                        color: Colors.brown[600]),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(10),
                                    height: 80,
                                    width: 90,
                                    color: Colors.brown[600],
                                    child: Text(
                                      "BELUM ADA RESEP",
                                      style: TextStyle(
                                          fontFamily: "student",
                                          fontSize: 10,
                                          color: Colors.amber[100]),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Container(
                                    height: 25,
                                    width: 90,
                                    color: Colors.brown,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetilRec()));
                                      },
                                      child: Text(
                                        "More",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    )
                  ],
                )),
          ],
        ));
  }
}
