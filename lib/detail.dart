import 'package:dailycook/profile.dart';
import 'package:flutter/material.dart';
import 'addRecipe.dart';

class DetilRec extends StatelessWidget {
  const DetilRec({super.key});

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
                      MaterialPageRoute(builder: (context) => ProfileAcc()));
                },
                iconSize: 40,
              )
            ]),
        body: ListView(
          children: [
            Container(
              color: Colors.amber[50],
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    width: 300,
                    color: Colors.brown,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Image.asset(
                          "image/makanan.jpg",
                          width: 290,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 10),
                    width: 300,
                    height: 200,
                    color: Colors.brown,
                    child: Column(
                      children: [
                        Text(
                          "Mie ayam",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "student",
                              color: Colors.amber[100]),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          height: 140,
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Tumis bumbu halus, masukkan bumbu pelengkap. Tuang air secukupnya, masukkan cumi. Tunggu hingga empuk. Masukkan bahan lainnya, beri garam, kaldu, dan lada bubuk. Cuci bersih daging ayam dan lumuri dengan jeruk nipis diamkan kurang lebih 10 menit Tumis bumbu halus sampai wangi, masukkan daun salam, daun jeruk, dan sereh, aduk sampai bumbu matang, masukkan ayam, aduk rata, masak sampai berubah warna, tambahkan garam dan kaldu Masukkan santan encer dan air, masak dengan api sedang sampai daging ayam empuk Setelah kuah menyusut dan daging ayam empuk, masukkan santan kental, masak sambil terus diaduk sampai santan mendidih dan bumbu meresap.",
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: "student",
                                color: Colors.amber[100]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 10),
                    width: 300,
                    height: 180,
                    color: Colors.brown,
                    child: Column(
                      children: [
                        Text(
                          "How To Make It",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "student",
                              color: Colors.amber[100]),
                        ),
                        Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  "Step",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "student",
                                      color: Colors.amber[100]),
                                ),
                              ],
                            )),
                        ElevatedButton(onPressed: () {}, child: Text("Link"))
                      ],
                    ),
                  )
                ],
              ),
              padding: EdgeInsets.only(bottom: 50),
            )
          ],
        ));
  }
}
