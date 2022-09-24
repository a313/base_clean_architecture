import 'dart:math';

import 'package:intl/intl.dart';

extension CustomNumExtension on num {
  String toCurrency({String symbol = "đ"}) {
    final oCcy = NumberFormat.decimalPattern("vi");
    return "${oCcy.format(this)}$symbol";
  }

  num floorWithFractionDigits(int fractionDigits) {
    final p = pow(10, fractionDigits);
    return (this * p).floor() / p;
  }

  String formatWithSeparator({String separator = ","}) {
    return toString().replaceAll(RegExp(r'\.'), separator);
  }
}
