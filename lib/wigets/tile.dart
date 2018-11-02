import 'package:flutter/material.dart';

class Tile extends StatelessWidget {

  final Widget icon;
  final Widget title;

  Tile({this.title, this.icon});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;

    return new GestureDetector(
        child: Container(
            height: 110.0 ,
            width: size.width / 2,
            padding: const EdgeInsets.only(top: 2.0),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[this.title, this.icon],
                ),
              ),
            )
        ),
      onTap: ,
    );
  }
}