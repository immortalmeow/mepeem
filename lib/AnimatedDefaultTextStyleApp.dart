import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleApp extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleAppState createState() =>
      _AnimatedDefaultTextStyleAppState();
}

class _AnimatedDefaultTextStyleAppState
    extends State<AnimatedDefaultTextStyleApp> {
  var _warna = Colors.red;
  var _ukuranTeks = 20.0;

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
