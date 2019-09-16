import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({Key key, this.date, this.size: 50, this.fullDate})
      : super(key: key);
  final int date;
  final double size;
  final DateTime fullDate;

  isCurrentDay() {
    DateTime now = DateTime.now();
    return now.day == fullDate?.day &&
        now.month == fullDate?.month &&
        now.year == fullDate?.year;
  }

  @override
  Widget build(BuildContext context) {
    bool isCurent = isCurrentDay();
    return InkWell(
      onTap: () {
        print(fullDate);
      },
      child: Container(
        color: isCurent ? Colors.redAccent : null,
        alignment: Alignment.center,
        width: size,
        height: size,
        //  decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black12)),
        child: Text(
          date == null ? '' : date.toString(),
          style: TextStyle(color: isCurent ? Colors.white : null),
        ),
      ),
    );
  }
}
