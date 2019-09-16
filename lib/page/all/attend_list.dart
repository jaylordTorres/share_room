import 'package:flutter/material.dart';
import 'package:umpisa_room/core.dart';

class AttendList extends StatelessWidget {
  AttendList({this.list});

  final List<UiSchedule> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return ListTile(
              title: Text(list[index].name +
                  ' - ' +
                  UiStringHelper.timeToText(list[index].from) +
                  ' -- ' +
                  UiStringHelper.timeToText(list[index].to)));
        });
  }
}
