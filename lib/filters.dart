import 'package:cluless1/load_screen.dart';
import 'package:cluless1/wardrobe.dart';
import 'package:flutter/material.dart';
import 'package:cluless1/icons.dart';

class FiltersPage extends StatefulWidget {
  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  Widget itemCheckbox(Options option) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          width: 115,
          child: Row(
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    setState(() {
                      if (option.checkbox == false) {
                        option.imgPath = 'images/checked.png';
                        option.checkbox = true;
                      } else {
                        option.imgPath = 'images/circle.png';
                        option.checkbox = false;
                      }
                    });
                  },
                  child: Image(
                    image: AssetImage(option.imgPath),
                    fit: BoxFit.cover,
                    // color: Colors.red,
                    height: 20,
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                child: Text(option.title,
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'OpenSans',
                      color: Colors.black,
                    )),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget imgButton(Images image) {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (image.selected == false) {
              image.color = Colors.grey;
              image.selected = true;
            } else {
              image.color = null;
              image.selected = false;
            }
          });
        },
        child: Container(
            padding: EdgeInsets.fromLTRB(3, 0, 10, 0),
            child: Image(
              image: AssetImage(image.imgPath),
              color: image.color,
              fit: BoxFit.cover,
              height: 45,
            )));
  }

  Widget txtButton(Seasons txt) {
    return Container(
        padding: EdgeInsets.fromLTRB(3, 0, 10, 0),
        height: 43,
        child: GestureDetector(
            onTap: () {
              setState(() {
                if (txt.selected == false) {
                  txt.color = Colors.grey;
                  txt.selected = true;
                } else {
                  txt.color = txt.defaultColor;
                  txt.selected = false;
                }
              });
            },
            child: Text(
              txt.title,
              style: TextStyle(
                  fontFamily: 'Bukhari', fontSize: 29, color: txt.color),
            )));
  }

  Widget colorCheckbox(Colours color) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          width: 50,
          child: Row(
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    setState(() {
                      if (color.checkbox == false) {
                        color.imgPath = color.checkedImgPath;
                        color.checkbox = true;
                      } else {
                        color.imgPath = color.defaultImg;
                        color.checkbox = false;
                      }
                    });
                  },
                  child: Image(
                    image: AssetImage(color.imgPath),
                    fit: BoxFit.cover,
                    height: 30,
                  )),
            ],
          ),
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
                    itemCheckbox(options[0]),
                    itemCheckbox(options[1]),
                  ]),
                  Row(children: <Widget>[
                    itemCheckbox(options[2]),
                    itemCheckbox(options[3]),
                  ]),
                  Row(children: <Widget>[
                    itemCheckbox(options[4]),
                    itemCheckbox(options[5]),
                  ]),
                  Row(children: <Widget>[
                    itemCheckbox(options[6]),
                    itemCheckbox(options[7]),
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
                colorCheckbox(colors[0]),
                colorCheckbox(colors[1]),
                colorCheckbox(colors[2]),
                colorCheckbox(colors[3])
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
                    itemCheckbox(options[8]),
                    itemCheckbox(options[9]),
                  ]),
                  Row(children: <Widget>[
                    itemCheckbox(options[10]),
                    itemCheckbox(options[11]),
                  ]),
                  Row(children: <Widget>[
                    itemCheckbox(options[12]),
                    itemCheckbox(options[13]),
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
                    txtButton(seasons[0]),
                    txtButton(seasons[1]),
                    txtButton(seasons[2]),
                    txtButton(seasons[3])
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
                    imgButton(imgs[0]),
                    imgButton(imgs[1]),
                    imgButton(imgs[2]),
                    imgButton(imgs[3]),
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
                    imgButton(imgs[4]),
                    imgButton(imgs[5]),
                    imgButton(imgs[6]),
                    imgButton(imgs[7]),
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

class Options {
  Options({this.title, this.checkbox, this.imgPath, this.type});

  String title;
  String type;
  bool checkbox;
  String imgPath;
}

class Colours {
  Colours(
      {this.title,
      this.checkbox,
      this.defaultImg,
      this.checkedImgPath,
      this.imgPath});

  String title;
  bool checkbox;
  String defaultImg;
  String checkedImgPath;
  String imgPath;
}

List<Colours> colors = <Colours>[
  Colours(
      title: 'white',
      checkbox: false,
      defaultImg: 'images/white.png',
      checkedImgPath: 'images/whitecheck.png',
      imgPath: 'images/white.png'),
  Colours(
      title: 'pink',
      checkbox: false,
      defaultImg: 'images/pink.png',
      checkedImgPath: 'images/pinkcheck.png',
      imgPath: 'images/pink.png'),
  Colours(
      title: 'yellow',
      checkbox: false,
      defaultImg: 'images/yellow.png',
      checkedImgPath: 'images/yellowcheck.png',
      imgPath: 'images/yellow.png'),
  Colours(
      title: 'purple',
      checkbox: false,
      defaultImg: 'images/purple.png',
      checkedImgPath: 'images/purplecheck.png',
      imgPath: 'images/purple.png')
];

List<Options> options = <Options>[
  Options(
      title: 'tops',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'item'),
  Options(
      title: 'bottoms',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'item'),
  Options(
      title: 'shoes',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'item'),
  Options(
      title: 'one piece',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'item'),
  Options(
      title: 'outerwear',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'item'),
  Options(
      title: 'jewellery',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'item'),
  Options(
      title: 'bags',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'item'),
  Options(
      title: 'tights',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'item'),
  Options(
      title: 'basic',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'tag'),
  Options(
      title: 'work',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'tag'),
  Options(
      title: 'vintage',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'tag'),
  Options(
      title: 'masc',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'tag'),
  Options(
      title: 'pastel',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'tag'),
  Options(
      title: 'going out',
      checkbox: false,
      imgPath: 'images/circle.png',
      type: 'tag'),
];

class Seasons {
  Seasons({this.title, this.color, this.selected, this.defaultColor});

  Color defaultColor;
  String title;
  Color color;
  bool selected;
}

List<Seasons> seasons = <Seasons>[
  Seasons(
      title: 'sum',
      color: Color(0xFFf966c3),
      selected: false,
      defaultColor: Color(0xFFf966c3)),
  Seasons(
      title: 'aut',
      color: Color(0xFFfaae3d),
      selected: false,
      defaultColor: Color(0xFFfaae3d)),
  Seasons(
      title: 'win',
      color: Color(0xFFac75ab),
      selected: false,
      defaultColor: Color(0xFFac75ab)),
  Seasons(
      title: 'spr',
      color: Color(0xFFabd2f6),
      selected: false,
      defaultColor: Color(0xFFabd2f6)),
];

class Images {
  Images({this.imgPath, this.color, this.selected});

  String imgPath;
  Color color;
  bool selected;
}

List<Images> imgs = <Images>[
  Images(imgPath: 'images/sun.png', color: null, selected: false),
  Images(imgPath: 'images/wind.png', color: null, selected: false),
  Images(imgPath: 'images/snow.png', color: null, selected: false),
  Images(imgPath: 'images/rain.png', color: null, selected: false),
  Images(imgPath: 'images/cap.png', color: null, selected: false),
  Images(imgPath: 'images/thumbsup.png', color: null, selected: false),
  Images(imgPath: 'images/sparkles.png', color: null, selected: false),
  Images(imgPath: 'images/crown.png', color: null, selected: false),
];

class Drawhorizontalline extends CustomPainter {
  Paint _paint;

  Drawhorizontalline() {
    _paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-90.0, 0.0), Offset(90.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
