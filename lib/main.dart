import 'package:flutter/material.dart';
import 'package:wat_i_want/views/home/HomeView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WatIWant',
      home: HomeView(),
    );
  }
}