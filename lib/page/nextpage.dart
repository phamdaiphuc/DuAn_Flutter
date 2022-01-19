import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class nextpage extends StatefulWidget {
  @override
  _nextpage createState() => _nextpage();
}

class _nextpage extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DanhSach'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: Column(
        children: [
          Icon(Icons.home),
        ],
      )),
    );
  }
}
