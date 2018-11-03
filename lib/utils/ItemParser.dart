import 'dart:convert';
import 'package:wat_i_want/models/item.dart';

class ItemParser{

  static List<Item> parseCollection(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Item>((json) => Item.fromJson(json)).toList();
  }
}