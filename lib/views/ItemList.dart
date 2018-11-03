import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wat_i_want/models/item.dart';

class ItemListState extends State<ItemListWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Les envies'),
      ),
      body: FutureBuilder<List<Item>>(
        future: getListFromService(),
        builder: (context, snapshot) {
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData ? ListViewItems(items: snapshot.data,) : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

  Future<List<Item>> getListFromService() async {
    final response =  await http.get("http://archlinux:9012/v1/item");
    return parseItems(response.body);
  }


  List<Item> parseItems(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Item>((json) => Item.fromJson(json)).toList();
  }

class ItemListWidget extends StatefulWidget {
  @override
  ItemListState createState() => new ItemListState();
}

class ListViewItems extends StatelessWidget {

  final List<Item> items;

  ListViewItems({Key key, this.items}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.all(15.0),
        itemBuilder: (context, position) {
          return Column(
            children: <Widget>[
              Divider(height: 5.0),
              ListTile(
                title: Text(
                  '${items[position].name}',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.deepOrange,
                  ),
                ),
                subtitle: Text(
                  '${items[position].shortDescription}',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.brown
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

}
