import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Question1',
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _bg = Colors.white;
  Color _color = Colors.pink;
  String _text = 'Light mode!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      body: Center(
        child: Text(
          _text,
          style: TextStyle(
            color: _color,
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
            label: Text('Dark Mode'),
            onPressed: null,
          ),
          FloatingActionButton.extended(
            label: Text('Light Mode'),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
