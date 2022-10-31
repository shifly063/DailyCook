import 'package:flutter/material.dart';
import 'login.dart';

class Homelist extends StatelessWidget {
  const Homelist({super.key});

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
                  ],
                )),
          ],
        ));
  }
}
