import 'package:flutter/material.dart';
import 'package:umpisa_room/core.dart';
import './body.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: UiDrawer(title: 'Rooms', subtitle: 'sample lang'),
      body: Body(),
    );
  }
}
