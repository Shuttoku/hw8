import 'package:flutter/material.dart';
import './menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    
      home: Scaffold(
        appBar: AppBar(
          title: Text("Food Menu"),
          backgroundColor: Color.fromARGB(255, 255, 98, 150),
        ),
        body: Menu(),
      ),
    );
    
  }
}