import 'package:intl/intl.dart';

class UiStringHelper {
  static String timeToText(DateTime date) {
    return DateFormat.yMd().add_jm().format(date);
  }
}
