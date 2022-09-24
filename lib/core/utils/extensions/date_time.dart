import 'package:intl/intl.dart';

import '../constants/date_format.dart';

extension DateExtension on DateTime {
  String toStringFormat(String format) {
    return DateFormat(format, "vi").format(toLocal());
  }

  DateTime dateWithoutTime() {
    return DateTime.utc(year, month, day);
  }

  DateTime dateWithoutDay() {
    return DateTime.utc(year, month);
  }

  /// 13:00 ngày 21
  String toEdString() {
    return "${DateFormat("HH:mm").format(this)} ngày ${DateFormat("dd").format(this)}";
  }

  String toTimeDateString() {
    return DateFormat(DateFormater.hhmmDDMMYYYY).format(this);
  }
}
