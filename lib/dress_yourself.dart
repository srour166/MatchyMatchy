// Helpful links:
//https://www.youtube.com/watch?v=sC9qhNPvW1M

import 'package:flutter/material.dart';
import 'package:cluless1/load_screen.dart';
import 'package:cluless1/clothes.dart';
// import 'package:cluless1/filters.dart';
import 'package:cluless1/icons.dart';
import 'dart:math';

Random rnd = new Random();

class DressYourselffPage extends StatefulWidget {
  @override
  _DressYourselffPageState createState() => _DressYourselffPageState();
}

class _DressYourselffPageState extends State<DressYourselffPage> {
  Widget _bulidImgSlider(Slider slider) {
    print(clothes[slider.index].imgPath);
    print(slider.index);
    void _previousImage() {
      setState(() {
        if (slider.index > 0) {
          slider.index = slider.index - 1;
        } else {
          slider.index = clothes.length - 1;
        }
        // slider.index = slider.index > 0 ? slider.index - 1 : 0;
      });
    }

    void _nextImage() {
      setState(() {
        if (slider.index < clothes.length - 1) {
          slider.index = slider.index + 1;
        } else {
          slider.index = 0;
        }

        // slider.index =
        //     slider.index < clothes.length - 1 ? slider.index + 1 : slider.index;
      });
    }

    return Container(
        color: Colors.white,
        height: slider.boxSize,
        width: slider.boxSize,
        child: Stack(children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(clothes[slider.index].imgPath),
                      fit: BoxFit.cover)),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                      onTap: _previousImage,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(3, 0, 10, 0),
                          child: Image(
                            image: AssetImage('images/prev.png'),
                            fit: BoxFit.cover,
                            height: slider.buttonSize,
                          ))),
                  SizedBox(width: slider.space),
                  GestureDetector(
                      onTap: _nextImage,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(3, 0, 10, 0),
                          child: Image(
                              image: AssetImage('images/next.png'),
                              fit: BoxFit.cover,
                              height: slider.buttonSize))),
                ],
              ))
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFf4b75c),
      body: Container(
          child: Row(children: <Widget>[
            SizedBox(width: 15),
            Column(children: <Widget>[
              _bulidImgSlider(sliders[0]),
              Container(height: 20),
              _bulidImgSlider(sliders[1]),
              Container(height: 20),
              _bulidImgSlider(sliders[2]),
            ]),
            SizedBox(width: 20),
            Column(children: <Widget>[
              _bulidImgSlider(sliders[3]),
              Container(height: 20),
              _bulidImgSlider(sliders[4]),
              Container(height: 20),
              _bulidImgSlider(sliders[5]),
              Container(height: 20),
              _bulidImgSlider(sliders[6]),
            ]),
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
                      icon: Icon(icon_choices[5].icon,
                          color: Colors.red, size: 60),
                      onPressed: () => {},
                      splashColor: Colors.grey,
                    ),
                    Container(width: 100),
                    IconButton(
                        iconSize: 40.0,
                        // padding: EdgeInsets.only(right: 0),
                        icon: Icon(icon_choices[4].icon,
                            color: Colors.white, size: 50),
                        onPressed: () => {},
                        splashColor: Colors.grey),
                    IconButton(
                        iconSize: 40.0,
                        // padding: EdgeInsets.only(right: 0),
                        icon: Icon(icon_choices[6].icon,
                            color: Colors.white, size: 50),
                        onPressed: () => {},
                        splashColor: Colors.grey)
                  ]))),
    ));
  }
}

class Slider {
  Slider({this.boxSize, this.buttonSize, this.space, this.index});

  double boxSize;
  double buttonSize;
  double space;
  int index;
}

List<Slider> sliders = <Slider>[
  Slider(
      boxSize: 170,
      buttonSize: 35,
      space: 70,
      index: rnd.nextInt(clothes.length)),
  Slider(
      boxSize: 170,
      buttonSize: 35,
      space: 70,
      index: rnd.nextInt(clothes.length)),
  Slider(
      boxSize: 170,
      buttonSize: 35,
      space: 70,
      index: rnd.nextInt(clothes.length)),
  Slider(
      boxSize: 125,
      buttonSize: 25,
      space: 45,
      index: rnd.nextInt(clothes.length)),
  Slider(
      boxSize: 125,
      buttonSize: 25,
      space: 45,
      index: rnd.nextInt(clothes.length)),
  Slider(
      boxSize: 125,
      buttonSize: 25,
      space: 45,
      index: rnd.nextInt(clothes.length)),
  Slider(
      boxSize: 125,
      buttonSize: 25,
      space: 45,
      index: rnd.nextInt(clothes.length)),
];
