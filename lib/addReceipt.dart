import 'package:dailycook/profile.dart';
import 'package:flutter/material.dart';

class AddReceipt extends StatelessWidget {
  const AddReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("DailyCook"),
            titleTextStyle: TextStyle(fontFamily: "caviarbold"),
            actions: <Widget>[
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
            Column(
              children: [
                Container(
                  width: 350,
                  height: 400,
                  color: Colors.brown[200],
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Text(
                        "Add Your Receipt",
                        style: TextStyle(
                            fontFamily: "caviarbold",
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      SizedBox(
                        width: 300,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Add Tittle',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              )),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Receipt',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'How To Make',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      SizedBox(
                        width: 300,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Your Tutorial',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              )),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Text("Submit"),
                        elevation: 6,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  child: Column(
                    children: [Image.asset("image/bgAdd.png")],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
