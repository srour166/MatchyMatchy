import 'package:flutter/material.dart';

class LoadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Bukhari'),
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
                child: Center(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                      RaisedButton(
                        onPressed: () => {},
                        splashColor: Colors.grey[200],
                        textColor: Colors.white,
                        child: Text('Enter...',
                            style: TextStyle(
                                fontFamily: 'Bukhari',
                                fontSize: 50,
                                color: Colors.white)),
                        color: Colors.transparent,
                      )
                    ])))));
  }
}
