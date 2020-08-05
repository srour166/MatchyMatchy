import 'package:flutter/material.dart';

class FiltersPage extends StatefulWidget {
  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  Widget itemCheckbox(Items item) {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            width: 120,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (item.checkbox == false) {
                            item.imgPath = 'images/checked.png';
                            item.checkbox = true;
                          } else {
                            item.imgPath = 'images/circle.png';
                            item.checkbox = false;
                          }
                        });
                      },
                      child: Image(
                        image: AssetImage(item.imgPath),
                        fit: BoxFit.cover,
                        // color: Colors.red,
                        height: 20,
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                    child: Text(item.title,
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'OpenSans',
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ))
      ],
    );
  }

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
              height: 30,
            ),
            Row(children: <Widget>[
              Card(
                child: Text(
                  'item',
                  style: TextStyle(
                      fontFamily: 'AbhayaLibre',
                      fontSize: 45,
                      color: Colors.black),
                ),
                color: Colors.white,
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    itemCheckbox(items[0]),
                    itemCheckbox(items[1]),
                  ]),
                  Row(children: <Widget>[
                    itemCheckbox(items[2]),
                    itemCheckbox(items[3]),
                  ]),
                  Row(children: <Widget>[
                    itemCheckbox(items[4]),
                    itemCheckbox(items[5]),
                  ]),
                  Row(children: <Widget>[
                    itemCheckbox(items[6]),
                    itemCheckbox(items[7]),
                  ]),
                ],
              )
            ])
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
              onPressed: () => {},
              splashColor: Colors.grey),
          actions: <Widget>[
            IconButton(
              icon: Icon(choices[1].icon, color: Colors.white, size: 40),
              onPressed: () => {},
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

class Items {
  Items({this.title, this.checkbox, this.imgPath});

  String title;
  bool checkbox;
  String imgPath;
}

class Colours {
  Colours({this.title, this.checkbox, this.defaultImg, this.checkedImgPath});

  String title;
  bool checkbox;
  String defaultImg;
  String checkedImgPath;
}

List<Colours> colors = <Colours>[
  Colours(title: 'white', checkbox: false, defaultImg: '', checkedImgPath: '')
];

List<Items> items = <Items>[
  Items(title: 'tops', checkbox: false, imgPath: 'images/circle.png'),
  Items(title: 'bottoms', checkbox: false, imgPath: 'images/circle.png'),
  Items(title: 'shoes', checkbox: false, imgPath: 'images/circle.png'),
  Items(title: 'one piece', checkbox: false, imgPath: 'images/circle.png'),
  Items(title: 'outerwear', checkbox: false, imgPath: 'images/circle.png'),
  Items(title: 'jewellery', checkbox: false, imgPath: 'images/circle.png'),
  Items(title: 'bags', checkbox: false, imgPath: 'images/circle.png'),
  Items(title: 'tights', checkbox: false, imgPath: 'images/circle.png'),
];

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
