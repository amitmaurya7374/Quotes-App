import 'package:flutter/material.dart';
import 'package:quotes_app/quotes_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Quotes(),
    );
  }
}