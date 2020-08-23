import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cluless1/usefulClasses.dart';

class ImgButton extends StatefulWidget {
  final Images image;
  ImgButton({Key key, @required this.image}) : super(key: key);
  _ImgButtonState createState() => _ImgButtonState();
}

class _ImgButtonState extends State<ImgButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (widget.image.selected == false) {
              widget.image.color = Colors.grey;
              widget.image.selected = true;
            } else {
              widget.image.color = null;
              widget.image.selected = false;
            }
          });
        },
        child: Container(
            padding: EdgeInsets.fromLTRB(3, 0, 10, 0),
            child: Image(
              image: AssetImage(widget.image.imgPath),
              color: widget.image.color,
              fit: BoxFit.cover,
              height: 45,
            )));
  }
}

class CustomCheckBox extends StatefulWidget {
  final Options option;
  CustomCheckBox({Key key, @required this.option}) : super(key: key);
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
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
                      if (widget.option.checkbox == false) {
                        widget.option.imgPath = 'images/checked.png';
                        widget.option.checkbox = true;
                      } else {
                        widget.option.imgPath = 'images/circle.png';
                        widget.option.checkbox = false;
                      }
                    });
                  },
                  child: Image(
                    image: AssetImage(widget.option.imgPath),
                    fit: BoxFit.cover,
                    // color: Colors.red,
                    height: 20,
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                child: Text(widget.option.title,
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
}

class TxtButton extends StatefulWidget {
  final Seasons txt;
  TxtButton({Key key, @required this.txt}) : super(key: key);
  _TxtButtonState createState() => _TxtButtonState();
}

class _TxtButtonState extends State<TxtButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(3, 0, 10, 0),
        height: 43,
        child: GestureDetector(
            onTap: () {
              setState(() {
                if (widget.txt.selected == false) {
                  widget.txt.color = Colors.grey;
                  widget.txt.selected = true;
                } else {
                  widget.txt.color = widget.txt.defaultColor;
                  widget.txt.selected = false;
                }
              });
            },
            child: Text(
              widget.txt.title,
              style: TextStyle(
                  fontFamily: 'Bukhari', fontSize: 29, color: widget.txt.color),
            )));
  }
}

class ColorCheckBox extends StatefulWidget {
  final Colours color;
  ColorCheckBox({Key key, @required this.color}) : super(key: key);
  _ColorCheckBoxState createState() => _ColorCheckBoxState();
}

class _ColorCheckBoxState extends State<ColorCheckBox> {
  @override
  Widget build(BuildContext context) {
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
                      if (widget.color.checkbox == false) {
                        widget.color.imgPath = widget.color.checkedImgPath;
                        widget.color.checkbox = true;
                      } else {
                        widget.color.imgPath = widget.color.defaultImg;
                        widget.color.checkbox = false;
                      }
                    });
                  },
                  child: Image(
                    image: AssetImage(widget.color.imgPath),
                    fit: BoxFit.cover,
                    height: 30,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
