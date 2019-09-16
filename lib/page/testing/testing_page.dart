import 'package:flutter/material.dart';
import './body.dart';

class TestingPage extends StatelessWidget {
  const TestingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: Body(),
    );
  }
}
