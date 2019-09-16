import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './helper.dart';
import './widget/item.dart';

class ArcCalendar extends StatefulWidget {
  final double size;

  ArcCalendar({Key key, this.size: 60.0 * 7.0}) : super(key: key);

  _ArcCalendarState createState() => _ArcCalendarState();
}

class _ArcCalendarState extends State<ArcCalendar> {
  DateTime date = DateTime.now();
  nextMonth() {
    setState(() {
      date = DateTime(date.year, date.month + 1, date.day);
    });
  }

  previousMonth() {
    setState(() {
      date = DateTime(date.year, date.month - 1, date.day);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items =
        CalendarHelper.createList(date.month, date.year).map<Widget>((week) {
      List<Widget> weekItems = week.map<Widget>(
        (item) {
          return Item(
            fullDate: item?.dateTime,
            date: item?.dateTime?.day,
            size: widget.size / 7,
          );
        },
      ).toList();

      return Row(
        children: weekItems,
      );
    }).toList();

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      width: widget.size,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: previousMonth,
                icon: Icon(Icons.arrow_back_ios),
              ),
              Text(DateFormat('MMMM yyyy').format(date), style: TextStyle(fontSize: 20),),
              IconButton(
                onPressed: nextMonth,
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          Container(
            // width: widget.size,
            child: Column(
              children: items,
            ),
          ),
        ],
      ),
    );
  }
}
