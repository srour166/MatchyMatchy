import 'package:cluless1/dress_yourself.dart';
import 'package:cluless1/savedOutfits.dart';
import 'package:cluless1/wardrobe.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFf4b75c),
      body: Container(
        // color: Color(0xFF190758),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(5, 70, 0, 0),
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              color: Color(0xFF190758),
              child: Text(
                'Matchy Matchy',
                style: TextStyle(
                    fontFamily: 'Bukhari', fontSize: 40, color: Colors.white),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        color: Colors.black,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'MENU',
                            style: TextStyle(
                                fontFamily: 'Abhaya Libre',
                                fontSize: 40,
                                color: Colors.white),
                          ),
                        )))
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 500,
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
              padding: EdgeInsets.only(top: 24),
              color: Color(0xFFf0d0f1),
              child: Column(
                children: <Widget>[
                  Container(
                      width: 300,
                      height: 70,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: FlatButton(
                          onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WardrobePage()),
                                )
                              },
                          textColor: Colors.white,
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          splashColor: Colors.grey,
                          child: Text('Wardrobe',
                              style: TextStyle(
                                  fontFamily: 'Moontime',
                                  fontSize: 70,
                                  color: Colors.black)))),
                  Container(
                    width: 300,
                    height: 70,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DressYourselffPage()),
                              )
                            },
                        textColor: Colors.white,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        splashColor: Colors.grey,
                        child: Text('Dress Yourself',
                            style: TextStyle(
                                fontFamily: 'Moontime',
                                fontSize: 60,
                                color: Colors.black))),
                  ),
                  Container(
                    width: 300,
                    height: 70,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: FlatButton(
                        onPressed: () => {},
                        textColor: Colors.white,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        splashColor: Colors.grey,
                        child: Text('Matchy Matchy',
                            style: TextStyle(
                                fontFamily: 'Moontime',
                                fontSize: 42,
                                color: Colors.black))),
                  ),
                  Container(
                    width: 300,
                    height: 70,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SavedOutfitsPage()),
                              )
                            },
                        textColor: Colors.white,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        splashColor: Colors.grey,
                        child: Text('Saved Outfits',
                            style: TextStyle(
                                fontFamily: 'Moontime',
                                fontSize: 50,
                                color: Colors.black))),
                  ),
                  Container(
                    width: 300,
                    height: 70,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: FlatButton(
                        onPressed: () => {},
                        textColor: Colors.white,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        splashColor: Colors.grey,
                        child: Text('Settings',
                            style: TextStyle(
                                fontFamily: 'Moontime',
                                fontSize: 60,
                                color: Colors.black))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
