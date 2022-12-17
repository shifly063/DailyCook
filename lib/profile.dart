import 'package:dailycook/login.dart';
import 'package:flutter/material.dart';
import 'addRecipe.dart';
import 'package:dailycook/services/globals.dart';

class ProfileAcc extends StatelessWidget {
  const ProfileAcc({super.key, required this.email, required this.nama});
  final String nama;
  final String email;

  @override
  Widget build(BuildContext context) {
    // final String nama;
    // final String email;
    return Scaffold(
      appBar: AppBar(
          title: Text("DailyCook"),
          titleTextStyle: TextStyle(fontFamily: "caviarbold"),
          actions: <Widget>[
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
                null;
              },
              iconSize: 40,
            )
          ]),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.deepOrange,
                  width: double.infinity,
                  child: Column(children: [
                    SizedBox(
                      height: 110.0,
                    ),
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage('image/user.png'),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(nama,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                  ]),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                      child: Card(
                          margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.brown[200]),
                              width: 310.0,
                              height: 250.0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.email,
                                          color: Colors.red,
                                          size: 50,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Email",
                                              style: TextStyle(
                                                fontSize: 22.0,
                                              ),
                                            ),
                                            Text(
                                              email,
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.brown,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.start,
                                    //   children: [
                                    //     Icon(
                                    //       Icons.settings,
                                    //       color: Colors.red,
                                    //       size: 35,
                                    //     ),
                                    //     SizedBox(
                                    //       width: 20.0,
                                    //     ),
                                    //     Column(
                                    //       crossAxisAlignment:
                                    //           CrossAxisAlignment.start,
                                    //       children: [
                                    //         Text(
                                    //           "Change Password",
                                    //           style: TextStyle(
                                    //             fontSize: 15.0,
                                    //           ),
                                    //         ),
                                    //         Text(
                                    //           "********",
                                    //           style: TextStyle(
                                    //             fontSize: 12.0,
                                    //             color: Colors.grey[400],
                                    //           ),
                                    //         )
                                    //       ],
                                    //     )
                                    //   ],
                                    // ),
                                    // Padding(padding: EdgeInsets.only(top: 20)),
                                    // ElevatedButton(
                                    //   child: Text('Logout'),
                                    //   style: ElevatedButton.styleFrom(
                                    //       backgroundColor: Colors.red),
                                    //   onPressed: () {
                                    //     Navigator.of(context)
                                    //         .push(MaterialPageRoute(
                                    //             builder: (context) => EditPass(
                                    //                   email: email,
                                    //                   id: id,
                                    //                   nama: nama,
                                    //                   pass: pass,
                                    //                 )));
                                    //   },
                                    // ),
                                  ],
                                ),
                              )))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//String length;

// class Lengthlist {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: getRecipe(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             length = Text(snapshot.data['data'].length) as String;
//             return Text(snapshot.data['data'].length);
//           } else {
//             return Text("error");
//           }
//         },
//       ),
//     );
//   }
// }

// class userlist {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: getUser(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             length = Text(snapshot.data['data'].length) as String;
//             return Text(snapshot.data['data'].length);
//           } else {
//             return Text("error");
//           }
//         },
//       ),
//     );
//   }
// }
