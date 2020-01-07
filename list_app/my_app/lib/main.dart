import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:buildBody(),
    );
    }
}

class buildBody extends StatefulWidget {
  @override
  _buildBodyState createState() => _buildBodyState();
}

class _buildBodyState extends State<buildBody> {
  Widget _buildList() {
      return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('first element')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('abdulrahman')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("WordPair generator"),),
    body: _buildList(),
    );
  }
}