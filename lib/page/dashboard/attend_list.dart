import 'package:flutter/material.dart';
import 'package:umpisa_room/core.dart';
import './attend_item.dart';

class AttendList extends StatelessWidget {
  AttendList({this.list});

  final List<UiSchedule> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return EventItem(
              title: list[index].name,
              from: UiStringHelper.timeToText(list[index].from),
              to: UiStringHelper.timeToText(list[index].to));
          // return ListTile(
          //     title: Text(list[index].name +
          //         ' - ' +
          //         UiStringHelper.timeToText(list[index].from) +
          //         ' -- ' +
          //         UiStringHelper.timeToText(list[index].to)));
        });
  }
}
