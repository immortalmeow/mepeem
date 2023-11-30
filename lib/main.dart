import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Animasi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  AnimatedDefaultTextStyleApp createState() => AnimatedDefaultTextStyleApp();
}

class AnimatedDefaultTextStyleApp extends State<MyHomePage> {
  var _warna = Colors.red;
  var _ukuranTeks = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(seconds: 1),
              style: TextStyle(color: _warna, fontSize: _ukuranTeks),
              child: Container(
                child: Text("Elektro Undip"),
              ),
            ),
            ElevatedButton(
              child: Text("Animation running out"),
              onPressed: () {
                setState(() {
                  _warna = Colors.blue;
                  _ukuranTeks = 40.0;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
