import 'package:flutter/material.dart';

//Images class defines buttons that are made using an image
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
  Images(imgPath: 'images/heart.png', color: null, selected: false)
];

//Options class is for the checkboxes choices
class Options {
  Options({this.title, this.checkbox, this.imgPath, this.type});

  String title;
  String type;
  bool checkbox;
  String imgPath;
}

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

//Colours class used to make coloured checkboxes
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

//Seasons class used to make the txt buttons displaying the seasons
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
