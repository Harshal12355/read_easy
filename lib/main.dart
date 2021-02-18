import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: EasyRead(),
    );
  }
}

class EasyRead extends StatefulWidget {
  @override
  _EasyReadState createState() => _EasyReadState();
}

class _EasyReadState extends State<EasyRead> {
  double _fontSize = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    style: TextStyle(fontSize: _fontSize),
                    maxLines: null,
                  ),
                ),
                Slider(
                    max: 200.0,
                    min: 20.0,
                    value: _fontSize,
                    onChanged: (newSize) {
                      setState(() => _fontSize = newSize);
                    }
                ),
              ],
            ),
        ),
    );
  }
}


