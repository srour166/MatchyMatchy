import 'package:flutter/material.dart';

class FiltersPage extends StatefulWidget {
  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  Widget checkbox(String title, bool boolValue) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(title),
            Container(
                alignment: Alignment.topLeft,
                child: Checkbox(
                    value: boolValue,
                    onChanged: (bool value) {
                      setState(() {
                        for (int i = 0; i < items.length; i++) {
                          if (title == items[i].title) {
                            items[i].checkbox = value;
                          }
                        }
                      });
                    }))
          ],
        )
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
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 3.0),
                      child: Column(
                        children: <Widget>[
                          checkbox(items[0].title, items[0].checkbox),
                          checkbox(items[1].title, items[1].checkbox),
                          checkbox(items[2].title, items[2].checkbox),
                          checkbox(items[3].title, items[3].checkbox),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 3.0),
                      child: Column(
                        children: <Widget>[
                          checkbox(items[4].title, items[4].checkbox),
                          checkbox(items[5].title, items[5].checkbox),
                          checkbox(items[6].title, items[6].checkbox),
                          checkbox(items[7].title, items[7].checkbox),
                        ],
                      )),
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
  Items({this.title, this.checkbox});

  String title;
  bool checkbox;
}

List<Items> items = <Items>[
  Items(title: 'tops', checkbox: false),
  Items(title: 'bottoms', checkbox: false),
  Items(title: 'shoes', checkbox: false),
  Items(title: 'one piece', checkbox: false),
  Items(title: 'outerwear', checkbox: false),
  Items(title: 'jewellery', checkbox: false),
  Items(title: 'bags', checkbox: false),
  Items(title: 'tights', checkbox: false),
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
