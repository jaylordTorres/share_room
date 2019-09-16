import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:umpisa_room/core.dart';
import './attend_list.dart';
import './attendance_form.dart';

const String tempName = 'temp username';

class Body extends StatefulWidget {
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  _add(from, to) {
    Provider.of<ScheduleProvider>(context)
        .add(UiSchedule(name: tempName, from: from, to: to));
  }

  Future _showCreateAttend() async {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return AttendanceForm(add: _add);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'My Schedules: ',
          style: UiStyles.h1,
        ),
        Expanded(
          child: AttendList(list: Provider.of<ScheduleProvider>(context).list),
        ),
        UiButtonRound(
          title: 'Attend',
          onPressed: _showCreateAttend,
        ),
      ],
    );
  }
}
