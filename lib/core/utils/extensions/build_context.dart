import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  //MediaQuery
  Size get screenSize => MediaQuery.of(this).size;

  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  bool get isSmallScene => MediaQuery.of(this).size.width <= 340;
}
