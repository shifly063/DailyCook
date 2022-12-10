import 'dart:convert';
import 'package:dailycook/list.dart';
import 'package:dailycook/profile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

final String url = 'http://10.0.2.2:8000/api/receipe';

class AddRecipe extends StatelessWidget {
  // const AddRecipe({super.key});
  final keyform = GlobalKey<FormState>();
  TextEditingController judulcontrol = TextEditingController();
  TextEditingController resepcontrol = TextEditingController();
  TextEditingController keterangancontrol = TextEditingController();
  TextEditingController imagecontrol = TextEditingController();
  TextEditingController urltextcontrol = TextEditingController();
  Future saveReceipe() async {
    final response = await http.post(Uri.parse(url), body: {
      "judul": judulcontrol.text,
      "resep": resepcontrol.text,
      "keterangan": keterangancontrol.text,
      "urlimage": imagecontrol.text,
      "url": urltextcontrol.text,
    });
    return json.decode(response.body);
  }

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
      body: Form(
        key: keyform,
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Container(
              height: 428,
              color: Colors.brown[200],
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    "Add Your Recipe",
                    style: TextStyle(
                        fontFamily: "caviarbold",
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: judulcontrol,
                      decoration: InputDecoration(
                        labelText: 'Tittle',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Tittle';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: resepcontrol,
                      decoration: InputDecoration(
                        labelText: 'Ingredients',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Recipe';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: keterangancontrol,
                      decoration: InputDecoration(
                        labelText: 'How To Make',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Step';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: imagecontrol,
                      decoration: InputDecoration(
                        labelText: 'Image URL',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter image URL';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: urltextcontrol,
                      decoration: InputDecoration(
                        labelText: 'URL Video',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Tutorial URL';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  FloatingActionButton(
                    onPressed: () {
                      if (keyform.currentState!.validate()) {
                        saveReceipe().then((value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Listdata()));
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Product berhasil di tambah")));
                        });
                      }
                    },
                    child: Text('Save'),
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
      ),
    );
  }
}
