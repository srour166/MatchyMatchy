import 'package:cluless1/load_screen.dart';
import 'package:cluless1/wardrobe.dart';
import 'package:flutter/material.dart';
import 'package:cluless1/icons.dart';
import 'package:cluless1/customWidgets.dart';
import 'package:cluless1/usefulClasses.dart';

class FiltersPage extends StatefulWidget {
  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFF190758),
      body: Container(
          child: Column(children: <Widget>[
            Container(
              child: Text('Filters',
                  style: TextStyle(
                      fontFamily: 'Moontime',
                      fontSize: 50,
                      color: Colors.black)),
              color: Color(0xFFd9d9d9),
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            ),
            Container(
              height: 20,
            ),
            Row(children: <Widget>[
              Container(
                width: 110,
                child: Card(
                  child: Center(
                    child: Text(
                      'items',
                      style: TextStyle(
                          fontFamily: 'AbhayaLibre',
                          fontSize: 30,
                          color: Colors.black),
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    CustomCheckBox(option: options[0]),
                    CustomCheckBox(option: options[1])
                  ]),
                  Row(children: <Widget>[
                    CustomCheckBox(option: options[2]),
                    CustomCheckBox(option: options[3])
                  ]),
                  Row(children: <Widget>[
                    CustomCheckBox(option: options[4]),
                    CustomCheckBox(option: options[5])
                  ]),
                  Row(children: <Widget>[
                    CustomCheckBox(option: options[6]),
                    CustomCheckBox(option: options[7])
                  ]),
                ],
              ),
            ]),
            Container(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Align(
                  child: Container(
                    width: 110,
                    child: Card(
                      child: Center(
                        child: Text(
                          'colours',
                          style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 30,
                              color: Colors.black),
                        ),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                ColorCheckBox(color: colors[0]),
                ColorCheckBox(color: colors[1]),
                ColorCheckBox(color: colors[2]),
                ColorCheckBox(color: colors[3]),
              ],
            ),
            Container(
              height: 15,
            ),
            Row(children: <Widget>[
              Container(
                width: 110,
                child: Card(
                  child: Center(
                    child: Text(
                      'tags',
                      style: TextStyle(
                          fontFamily: 'AbhayaLibre',
                          fontSize: 30,
                          color: Colors.black),
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    CustomCheckBox(option: options[8]),
                    CustomCheckBox(option: options[9])
                  ]),
                  Row(children: <Widget>[
                    CustomCheckBox(option: options[10]),
                    CustomCheckBox(option: options[11])
                  ]),
                  Row(children: <Widget>[
                    CustomCheckBox(option: options[12]),
                    CustomCheckBox(option: options[13])
                  ]),
                ],
              ),
            ]),
            Container(
              height: 20,
            ),
            Row(children: <Widget>[
              Container(
                width: 110,
                child: Card(
                  child: Center(
                    child: Text(
                      'season',
                      style: TextStyle(
                          fontFamily: 'AbhayaLibre',
                          fontSize: 30,
                          color: Colors.black),
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    TxtButton(txt: seasons[0]),
                    TxtButton(txt: seasons[1]),
                    TxtButton(txt: seasons[2]),
                    TxtButton(txt: seasons[3]),
                  ]),
                ],
              ),
            ]),
            Container(
              height: 20,
            ),
            Row(children: <Widget>[
              Container(
                width: 110,
                child: Card(
                  child: Center(
                    child: Text(
                      'weather',
                      style: TextStyle(
                          fontFamily: 'AbhayaLibre',
                          fontSize: 30,
                          color: Colors.black),
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    ImgButton(image: imgs[0]),
                    ImgButton(image: imgs[1]),
                    ImgButton(image: imgs[2]),
                    ImgButton(image: imgs[3]),
                  ]),
                ],
              ),
            ]),
            Container(
              height: 20,
            ),
            Row(children: <Widget>[
              Container(
                width: 110,
                child: Card(
                  child: Center(
                    child: Text(
                      'fanciness',
                      style: TextStyle(
                          fontFamily: 'AbhayaLibre',
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    ImgButton(image: imgs[4]),
                    ImgButton(image: imgs[5]),
                    ImgButton(image: imgs[6]),
                    ImgButton(image: imgs[7]),
                  ]),
                ],
              ),
            ]),
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
      bottomNavigationBar: BottomAppBar(
          color: Color(0xFF190758),
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 75,
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WardrobePage()),
                          );
                        },
                        color: Colors.transparent,
                        splashColor: Colors.grey,
                        child: Text(
                          'Done.',
                          style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              color: Colors.white,
                              fontSize: 50),
                        ))
                  ]))),
    ));
  }
}
