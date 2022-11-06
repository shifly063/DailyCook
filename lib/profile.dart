import 'package:flutter/material.dart';
import 'regist.dart';
import 'list.dart';
import 'addReceipt.dart';

class ProfileAcc extends StatelessWidget {
  const ProfileAcc({super.key});

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
                      MaterialPageRoute(builder: (context) => AddReceipt()));
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
        body: ListView(
          children: [Container()],
        ));
  }
}
