import 'package:flutter/material.dart';
import 'package:umpisa_room/core.dart';
import './body.dart';

class AllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Schedule'),
      ),
      drawer: UiDrawer(title: 'All Schedule', subtitle: 'sample lang'),
      body: Body(),
    );
  }
}
