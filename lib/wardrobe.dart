import 'package:cluless1/filters.dart';
import 'package:cluless1/load_screen.dart';
import 'package:flutter/material.dart';
import 'package:cluless1/icons.dart';
import 'package:cluless1/clothes.dart';

class WardrobePage extends StatefulWidget {
  @override
  _WardrobePageState createState() => _WardrobePageState();
}

class _WardrobePageState extends State<WardrobePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFf4b75c),
      body: Container(
          child: Column(children: <Widget>[
            FlatButton(
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FiltersPage()),
                      )
                    },
                textColor: Colors.white,
                color: Color(0xFFd9d9d9),
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                splashColor: Colors.grey,
                child: Text('Filters',
                    style: TextStyle(
                        fontFamily: 'Moontime',
                        fontSize: 50,
                        color: Colors.black))),
            Container(),
            Container(
                height: 500,
                child: GridView.extent(
                  maxCrossAxisExtent: 200,
                  scrollDirection: Axis.vertical,
                  children: _buildGridTiles(clothes.length),
                )),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      iconSize: 40.0,
                      // padding: EdgeInsets.only(left: 10),
                      icon: Icon(icon_choices[2].icon,
                          color: Colors.white, size: 60),
                      onPressed: () => {},
                      splashColor: Colors.grey,
                    ),
                    IconButton(
                        iconSize: 40.0,
                        // padding: EdgeInsets.only(right: 0),
                        icon: Icon(icon_choices[3].icon,
                            color: Colors.white, size: 50),
                        onPressed: () => {},
                        splashColor: Colors.grey)
                  ]))),
    ));
  }
}

List<Widget> _buildGridTiles(numOfTiles) {
  List<Container> containers =
      new List<Container>.generate(numOfTiles, (int index) {
    final imgName = clothes[index].imgPath;
    return new Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgName), fit: BoxFit.cover)),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  // color: Colors.white,
                  child: IconButton(
                // splashColor: Colors.red,
                icon:
                    Icon(icon_choices[3].icon, color: Colors.black87, size: 40),
                onPressed: () => {print('pressed')},
                // splashColor: Colors.grey,
              ))),
        ],
      ),

      // child: new Image.asset(imgName),
    );
  });
  return containers;
}
