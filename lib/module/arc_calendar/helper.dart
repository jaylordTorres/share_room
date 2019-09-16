class CalendarHelper {
  static DateTime lastDayOfMonth(DateTime month) {
    var beginningNextMonth = (month.month < 12)
        ? new DateTime(month.year, month.month + 1, 1)
        : new DateTime(month.year + 1, 1, 1);
    return beginningNextMonth.subtract(new Duration(days: 1));
  }

  /// creating calendar items from 0 index to full
  static List createList(int month, int year) {
    List<List> rows = [];
    int _date = 1;
    DateTime _monthly = DateTime(year, month);
    int maxMonthDay = lastDayOfMonth(_monthly).day;
    print(_monthly.weekday);
    // row
    for (var x = 0; x <= 5; x++) {
      List weeks = [];
      for (var week = 0; week <= 6; week++) {
        if (_date <= maxMonthDay) {
          if (x == 0 && week < _monthly.weekday) {
            weeks.add(null);
          } else {
            weeks.add(DateItem(dateTime: DateTime(year, month, _date)));
            _date++;
          }
        }
      }
      rows.add(weeks);
    }
    return rows;
  }
}

class DateItem {
  DateItem({this.dateTime});

  final DateTime dateTime;
}
