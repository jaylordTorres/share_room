import 'package:flutter/material.dart';

import '../model/schedule.dart';

class ScheduleProvider with ChangeNotifier {
  List<UiSchedule> _list = [];
  List<UiSchedule> get list => _list;

  void add(UiSchedule sched) {
    _list.add(sched);
    notifyListeners();
  }
}
