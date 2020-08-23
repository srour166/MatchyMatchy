import 'package:cluless1/filters.dart';
import 'package:cluless1/outfits.dart';
import 'package:cluless1/load_screen.dart';
import 'package:flutter/material.dart';
import 'package:cluless1/icons.dart';
import 'package:cluless1/customWidgets.dart';
import 'package:cluless1/usefulClasses.dart';
import 'dart:math';

Random rnd = new Random();

class SavedOutfitsPage extends StatefulWidget {
  @override
  _SavedOutfitsState createState() => _SavedOutfitsState();
}

class _SavedOutfitsState extends State<SavedOutfitsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xFFf4b75c),
            body: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                padding: EdgeInsets.only(top: 24),
                color: Color(0xFFf0d0f1),
                child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: FlatButton(
                            onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FiltersPage()),
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
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      ImgButton(image: imgs[8]),
                    ],
                  ),
                  Container(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: outfitsList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return OutfitItem(
                              outfit: outfitsList[index],
                            );
                          }))
                ])),
            appBar: new AppBar(
                backgroundColor: Color(0xFF190758),
                title: const Text('Saved Outfits',
                    style: TextStyle(
                        fontFamily: 'Bukhari',
                        fontSize: 35,
                        color: Colors.white)),
                leading: IconButton(
                    icon: Icon(icon_choices[0].icon,
                        color: Colors.white, size: 40),
                    onPressed: () => {Navigator.pop(context)},
                    splashColor: Colors.grey),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(icon_choices[1].icon,
                        color: Colors.white, size: 40),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoadScreen()),
                      )
                    },
                  )
                ])));
  }
}

class OutfitItem extends StatelessWidget {
  final Outfit outfit;
  OutfitItem({Key key, @required this.outfit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: Container(
                width: 400,
                height: 150,
                child: Column(
                  children: [
                    Text(outfit.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Moontime",
                        )),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 0.0,
                          mainAxisSpacing: 0.0),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Image(
                          image: AssetImage(outfit.elements[index].imgPath),
                          height: 100,
                        );
                      },
                    )
                  ],
                ))),
      ),
    );
  }
}
