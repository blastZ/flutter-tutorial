import 'package:flutter/material.dart';
import 'package:flutter_tutorial/detail_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _toDetail() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('To Detail'),
          onPressed: _toDetail,
        ),
      ),
    );
  }
}
