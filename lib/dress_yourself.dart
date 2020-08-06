//https://www.youtube.com/watch?v=sC9qhNPvW1M

import 'package:flutter/material.dart';

class DressUrselfPage extends StatefulWidget {
  @override
  _DressUrselfPageState createState() => _DressUrselfPageState();
}

class _DressUrselfPageState extends State<DressUrselfPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFf4b75c),
      body: Container(
          child: Column(children: <Widget>[]
            
                      );
                    }))),
          ]),
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          padding: EdgeInsets.only(top: 24),
          color: Color(0xFFf0d0f1)),
      appBar: new AppBar(
          backgroundColor: Color(0xFF190758),
          title: const Text('Wardrobe',
              style: TextStyle(
                  fontFamily: 'Bukhari', fontSize: 50, color: Colors.white)),
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