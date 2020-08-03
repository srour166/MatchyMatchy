import 'package:flutter/material.dart';

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
                onPressed: () => {},
                textColor: Colors.white,
                color: Color(0xFFd9d9d9),
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                splashColor: Colors.grey,
                child: Text('Filters',
                    style: TextStyle(
                        fontFamily: 'Moontime',
                        fontSize: 50,
                        color: Colors.black))),
            Container(
                height: 500,
                child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: List.generate(51, (index) {
                      return Container(
                        child: Card(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                          // margin: EdgeInsets.only(
                          //     left: 5, top: 5, right: 5, bottom: 5),
                          color: Colors.white,
                        ),
                        // decoration: new BoxDecoration(
                        //   boxShadow: [
                        //     new BoxShadow(
                        //       color: Colors.grey,
                        //       blurRadius: 20.0, // soften the shadow
                        //       spreadRadius: 1.0, //extend the shadow
                        //       offset: Offset(
                        //         0.0, // Move to right 10  horizontally
                        //         5.0, // Move to bottom 10 Vertically
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      );
                    }))),
            // new GridView.count(
            //     // Create a grid with 2 columns. If you change the scrollDirection to
            //     // horizontal, this produces 2 rows.
            //     crossAxisCount: 2,
            //     children: List.generate(100, (index) {
            //       return Center(
            //           child: GridTile(
            //               child: Text(
            //         'Items $index',
            //         style: Theme.of(context).textTheme.headline5,
            //       )));
            //     }))
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
            onPressed: null,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(choices[1].icon, color: Colors.white, size: 40),
              onPressed: null,
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
                        iconSize: 30.0,
                        padding: EdgeInsets.only(left: 10),
                        icon: Icon(choices[2].icon,
                            color: Colors.white, size: 70),
                        onPressed: null),
                    IconButton(
                        iconSize: 30.0,
                        padding: EdgeInsets.only(right: 50),
                        icon: Icon(choices[3].icon,
                            color: Colors.white, size: 70),
                        onPressed: null)
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
