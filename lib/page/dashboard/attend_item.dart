import 'package:flutter/material.dart';

class EventItem extends StatelessWidget {
  final String from;
  final String to;
  final String title;

  const EventItem({Key key, this.from, this.title, this.to}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(title + ' - ' + from + ' -- ' + to));
    ;
  }
}
