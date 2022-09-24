// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:base_clean_architecture/core/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MaterialApp app = const MaterialApp(
    supportedLocales: [
      Locale('vi'),
    ],
  );
  test("Test String extension", () {
    const vnString = 'Loại bỏ tiếng việt ra khỏi câu';
    final containDiacritics = vnString.containDiacritics;
    final rmVn = vnString.removeDiacritics();
    expect(containDiacritics, true);
    expect('abcdef'.containDiacritics, false);
    expect(rmVn, 'Loai bo tieng viet ra khoi cau');

    const name = 'nguyen  van      a';

    expect(name.capitalize(), 'Nguyen  van      a');
    expect(null.capitalize(), null);

    const numberAndString = 'nguyen 334 van  565   433 aăn';
    expect(numberAndString.onlyNumberic, '334565433');
    expect(numberAndString.isNumericOnly, false);
    expect('1234567890'.isNumericOnly, true);
  });

  test("Test num extension", () {
    int money = 5000000;
    expect(money.toCurrency(), '5.000.000đ');
    double money2 = 5000000.05;
    expect(money2.toCurrency(), '5.000.000,05đ');
  });

  // test("Test date time extension", () async {
  //   await initializeDateFormatting('vi', "http://localhost:8000/dates/");
  //   final date = DateTime(2022, 10, 04, 16, 20, 59, 300);

  //   log(date.toStringFormat(DateFormater.UTC));
  //   log(date.toStringFormat(DateFormater.DotDDMMYYYY));
  //   log(date.toStringFormat(DateFormater.E));
  //   log(date.toStringFormat(DateFormater.EEEE));
  //   log(date.toStringFormat(DateFormater.EEEEMMMMddyyyy));
  //   log(date.toStringFormat(DateFormater.EEEEMMMddyyyy));
  //   log(date.toStringFormat(DateFormater.HH_mm_DD_MM_YYYY));
  //   log(date.toStringFormat(DateFormater.HHmm));
  //   log(date.toStringFormat(DateFormater.HHmmDDMMYYYY));
  //   log(date.toStringFormat(DateFormater.HHmmdd));
  //   log(date.toStringFormat(DateFormater.HHmmss));
  //   log(date.toStringFormat(DateFormater.LLL));
  //   log(date.toStringFormat(DateFormater.MMM));
  //   log(date.toStringFormat(DateFormater.MMMMdd));
  //   log(date.toStringFormat(DateFormater.MMMMddyyyy));
  //   log(date.toStringFormat(DateFormater.MMM_dd));
  //   log(date.toStringFormat(DateFormater.MMMddyyyy));
  //   log(date.toStringFormat(DateFormater.MMMddyyyyHHmm));
  // });
}
