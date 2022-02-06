import 'dart:async';

import 'package:bcsmath/category.dart';
import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Category()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BorderedText(
              strokeWidth: 4.0,
              strokeColor: Colors.blue,
              child: Text(
                'Welcome to ',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  decorationColor: Colors.red,
                  fontSize: 35
                ),
              ),
            ),
            SizedBox(height: 5,),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/logobcsmath.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
