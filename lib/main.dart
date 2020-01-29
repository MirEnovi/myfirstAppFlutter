import 'package:flutter/material.dart';
import 'package:flutter_app2/home.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primera Aplicación',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}