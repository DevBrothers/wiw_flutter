import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wat_i_want/views/ItemList.dart';
import 'package:wat_i_want/views/home/HomeStyle.dart';
import 'package:wat_i_want/wigets/tile.dart';

class HomeView extends StatefulWidget{
  @override
  HomeScreenState createState() => new HomeScreenState();
}

//Vue home globale
class HomeScreenState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Container(
      child: Row(
        children: <Widget>[
          GestureDetector(
              child:       Tile(
                title: Text("Mes envies", style: HomeStyle().tileTextStyle),
                icon: Icon(Icons.list, size: 40.0, color: Colors.blue),
              ),
              onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => ItemListWidget()));
              }
          ),
          Tile(
            title: Text("Préparer un cadeau", style: HomeStyle().tileTextStyle),
            icon: Icon(Icons.card_giftcard, size: 40.0, color: Colors.amber),
          )
        ],
      )
      ),
    );
  }
}

AppBar homeAppBar(){
  return AppBar(
    title: Text("Wat I Want"),
  );
}


