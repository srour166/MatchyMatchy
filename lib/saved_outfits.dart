import 'package:cluless1/dress_yourself.dart';
import 'package:cluless1/filters.dart';
import 'package:cluless1/outfits.dart';
import 'package:cluless1/load_screen.dart';
import 'package:flutter/material.dart';
import 'package:cluless1/icons.dart';


class SavedOutfitsPage extends StatefulWidget {
  @override
  _SavedOutfitsState createState() => _SavedOutfitsState();
}

class _SavedOutfitsState extends State<_SavedOutfits> {
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



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFf4b75c),
      body: Container(
        Row (children: [
          Column(children: <Widget>[
            FlatButton(
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

            Column(children: [imgButton(imgs[0])]),
        ])]),
        
            Container(),
            Container(
              Column(children: [
                new ListView.builder(
                  itemCount: outfits.length,
                  itemBuilder: (context, index) {
                    return _myListView(context, index);
               
                   })]) 
              )
            ),
        
          
      appBar: new AppBar(
          backgroundColor: Color(0xFF190758),
          title: const Text('Saved Outfits',
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
                  ])))
    ));}}
  

class OutfitItem extends StatelessWidget {
  const OutfitItem({
    this.outfit
  });

  final Outfit outfit;

  @override
  Widget build(BuildContext context, index) {
    return Container(
      child: Card(
      child: Row( children: [
        Row(                 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Expanded(child: Text(outfit.tag[0].title, style: TextStyle(fontSize:30, fontFamily: "Abhaya Libre.")
          )),
          Text(outfit.season[0].title)
        ]),
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image(image: outfit.fanciness[0]),
          Image(image: outfit.weather[0]),
          Expanded(child: Text( outfit.title, style: TextStyle(fontSize: 60, fontFamily: "Moontime")))
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Expanded(child: List<Images> outfit.elements[0-2])
        ]),
        Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Expanded(child: List<Images> outfit.elements[3-6])
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          children:[
          FlatButton(
          onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DressYourselffPage()),
                )
              },
          color: Color.fromRGBO(255, 102, 196, 255),
          splashColor: Colors.grey,
          child: Text('Edit',
              style: TextStyle(
                  fontFamily: 'Moontime',
                  fontSize: 50,
                  color: Colors.pink))),
        FlatButton(onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DressYourselffPage()),
                )
              },
          color: Color.fromRGBO(255, 102, 196, 255),
          splashColor: Colors.grey,
          child: Text('Share',
              style: TextStyle(
                  fontFamily: 'Moontime',
                  fontSize: 50,
                  color: Colors.pink)))
        ])])));
}
}

Widget _myListView(BuildContext context, index) {
  return ListView.builder(
    itemCount: outfits.length, 
    itemBuilder: (context, index) {
      return Card(
        child: 
        OutfitItem(
          outfit: outfits[index]
        )
          

        );});}
          

     


List<Images> imgs = <Images>[
  Images(imgPath: 'images/heart.jpg', color: null, selected: false)
];
