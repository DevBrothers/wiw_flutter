import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }
}

AppBar HomeAppBar(){
  return AppBar(
    title: Text("Wat I Want"),
  );
}

Container HomeBody() {
  final TextStyle myTextStyle =
  new TextStyle(color: Colors.grey, fontSize: 14.0);

  var firstRow = Row(
    children: <Widget>[
      Tile(
        title: Text("Mes envies", style: myTextStyle),
        icon: Icon(Icons.list, size: 40.0, color: Colors.blue),
      ),
      Tile(
        title: Text("Préparer un cadeau", style: myTextStyle),
        icon: Icon(Icons.card_giftcard, size: 40.0, color: Colors.amber),
      )
    ],
  );

  
  return Container(
   padding: const EdgeInsets.only(bottom: 2.0),
    child: firstRow,
  );
}




