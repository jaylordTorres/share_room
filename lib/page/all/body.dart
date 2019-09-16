import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:umpisa_room/core.dart';
import './attend_list.dart';

const String tempName = 'temp username';

class Body extends StatefulWidget {
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'All Schedules: ',
          style: UiStyles.h1,
        ),
        Expanded(
          child: AttendList(list: Provider.of<ScheduleProvider>(context).list),
        ),
        UiButtonRound(
          title: 'Change Date',
          // onPressed: _showCreateAttend,
        ),
      ],
    );
  }
}
