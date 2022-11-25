import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
       scaffoldBackgroundColor: Colors.black,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  final _durarion = const Duration(seconds: 1);
  final _curve = Curves.fastOutSlowIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
          duration: _durarion,
          curve: _curve,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
                final random = Random();

                _width = random.nextInt(300).toDouble();
                _height = random.nextInt(300).toDouble();
                _color = Color.fromRGBO(
                 random.nextInt(256),
                 random.nextInt(256),
                 random.nextInt(256),
                 1

                  );
              }),
              child: const Icon(Icons.play_arrow),
              
              ),
    );
  }
}
