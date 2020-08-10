//https://www.youtube.com/watch?v=sC9qhNPvW1M

import 'package:flutter/material.dart';
import 'package:cluless1/load_screen.dart';
import 'package:cluless1/clothes.dart';
import 'package:cluless1/filters.dart';

class DressYourselffPage extends StatefulWidget {
  @override
  _DressYourselffPageState createState() => _DressYourselffPageState();
}

class _DressYourselffPageState extends State<DressYourselffPage> {
  int photoIndex = 0;

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex =
          photoIndex < clothes.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFf4b75c),
      body: Container(
          child: Column(children: <Widget>[
            Center(
                child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(clothes[photoIndex].imgPath),
                            fit: BoxFit.cover)),
                    height: 300.0,
                    width: 300.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        onTap: _previousImage,
                        child: Container(
                            padding: EdgeInsets.fromLTRB(3, 0, 10, 0),
                            child: Image(
                              image: AssetImage('images/prev.png'),
                              fit: BoxFit.cover,
                              height: 70,
                            ))),
                    SizedBox(width: 100.0),
                    GestureDetector(
                        onTap: _nextImage,
                        child: Container(
                            padding: EdgeInsets.fromLTRB(3, 0, 10, 0),
                            child: Image(
                              image: AssetImage('images/next.png'),
                              fit: BoxFit.cover,
                              height: 70,
                            ))),
                  ],
                )
              ],
            ))
          ]),
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          padding: EdgeInsets.only(top: 24),
          color: Color(0xFFf0d0f1)),
      appBar: new AppBar(
          backgroundColor: Color(0xFF190758),
          title: const Text('Dress Yourself',
              style: TextStyle(
                  fontFamily: 'Bukhari', fontSize: 35, color: Colors.white)),
          leading: IconButton(
              icon: Icon(choices[0].icon, color: Colors.white, size: 40),
              onPressed: () => {Navigator.pop(context)},
              splashColor: Colors.grey),
          actions: <Widget>[
            IconButton(
              icon: Icon(choices[1].icon, color: Colors.white, size: 40),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadScreen()),
                )
              },
            )
          ]),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xFF190758),
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 75,
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      iconSize: 40.0,
                      // padding: EdgeInsets.only(left: 10),
                      icon:
                          Icon(choices[2].icon, color: Colors.white, size: 60),
                      onPressed: () => {},
                      splashColor: Colors.grey,
                    ),
                    IconButton(
                        iconSize: 40.0,
                        // padding: EdgeInsets.only(right: 0),
                        icon: Icon(choices[3].icon,
                            color: Colors.white, size: 50),
                        onPressed: () => {},
                        splashColor: Colors.grey)
                  ]))),
    ));
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'back', icon: Icons.arrow_back),
  const Choice(title: 'home', icon: Icons.home),
  const Choice(title: 'add', icon: Icons.add),
  const Choice(title: 'trash', icon: Icons.delete),
];
