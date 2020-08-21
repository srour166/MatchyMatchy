// Helpful links:
// - https://www.coderzheaven.com/2019/01/08/flutter-tutorial-select-an-image-from-gallery-and-show-in-imageview/#:~:text=Flutter%20Tutorial%20%E2%80%93%20Select%20an%20image%20from%20Gallery%20and%20show%20in%20Imageview,-By%20James%20%7C%20January&text=For%20selecting%20an%20image%20from,the%20root%20of%20your%20project.
// - https://www.youtube.com/watch?v=YyB5U1NRd4k
// - https://www.youtube.com/watch?v=LAhiqRzbx8M

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cluless1/icons.dart';
import 'package:cluless1/load_screen.dart';

class AddImagePage extends StatefulWidget {
  @override
  _AddImagePageState createState() => _AddImagePageState();
}

class _AddImagePageState extends State<AddImagePage> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFF190758),
      appBar: new AppBar(
          backgroundColor: Color(0xFF190758),
          title: const Text('Wardrobe',
              style: TextStyle(
                  fontFamily: 'Bukhari', fontSize: 50, color: Colors.white)),
          leading: IconButton(
              icon: Icon(icon_choices[0].icon, color: Colors.white, size: 40),
              onPressed: () => {Navigator.pop(context)},
              splashColor: Colors.grey),
          actions: <Widget>[
            IconButton(
              icon: Icon(icon_choices[1].icon, color: Colors.white, size: 40),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadScreen()),
                )
              },
            )
          ]),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 45, 15, 0),
              color: Color(0xFF190758),
              child: Text('+ Add Clothes',
                  style: TextStyle(
                      fontFamily: 'Bukhari',
                      fontSize: 35,
                      color: Colors.white)),
            ),
            Container(
              child: Icon(Icons.video_call, color: Colors.white, size: 300),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.image, color: Colors.white, size: 60),
                Icon(Icons.camera, color: Colors.orange, size: 60),
                Icon(Icons.loop, color: Colors.white, size: 60)
              ],
            )
          ],
        ),
      )),
    ));
  }
}
