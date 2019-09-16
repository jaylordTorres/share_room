import 'package:flutter/material.dart';
import 'package:umpisa_room/core.dart';
import 'package:umpisa_room/module/arc_calendar/main.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[Center(child: ArcCalendar())]);
  }
}
