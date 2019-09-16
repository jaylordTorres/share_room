import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:umpisa_room/helper/string_helper.dart';

String timeToString(TimeOfDay t) {
  if (t != null) {
    return t.hour.toString() + ':' + t.minute.toString();
  }
  return '';
}

DateTime timeCombine(DateTime date, TimeOfDay time) {
  return DateTime(date.year, date.month, date.day, time.hour, time.minute);
}

class AttendanceForm extends StatefulWidget {
  AttendanceForm({Key key, @required this.add}) : super(key: key);
  final add;

  _AttendanceFormState createState() => _AttendanceFormState();
}

class _AttendanceFormState extends State<AttendanceForm> {
  TimeOfDay _start;
  TimeOfDay _end;
  DateTime _date;

  String _value = '';

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 1)),
        lastDate: DateTime(2020));
    if (picked != null) setState(() => _date = picked);
  }

  Future _selectStart() async {
    TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) setState(() => _start = picked);
  }

  Future _selectEnd() async {
    TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) setState(() => _end = picked);
  }

  submit() {
    if (_date == null || _start == null || _end == null) {
      return;
    }
    var finalStart = timeCombine(_date, _start);
    var finalEnd = timeCombine(_date, _end);
    // print(UiStringHelper.timeToText(finalStart));
    // print(UiStringHelper.timeToText(finalEnd));
    widget.add(finalStart, finalEnd);
    Navigator.pop(context);
  }
  // return DateFormat.yMd().add_jm().format(date);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            'Attendance',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
        ),
        Divider(),
        ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Select Date'),
            trailing: Text(_date == null ? '' : DateFormat.yMd().format(_date)),
            onTap: _selectDate),
        ListTile(
            leading: Icon(Icons.first_page),
            title: Text('Select Start time'),
            trailing: Text(timeToString(_start)),
            onTap: _selectStart),
        ListTile(
            leading: Icon(Icons.last_page),
            title: Text('Select End time'),
            trailing: Text(timeToString(_end)),
            onTap: _selectEnd),
        ListTile(
            leading: Icon(Icons.save),
            title: Text('Submit'),
            onTap: _date == null || _start == null || _end == null
                ? null
                : submit),
      ],
    ));
  }
}
