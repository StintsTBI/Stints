import 'package:flutter/material.dart';

const BoxShadow boxShadow =BoxShadow(color:WidgetColors.black,offset: Offset(0, 4),blurRadius: 4);
class WidgetColors {
  static const Color primaryColor = const Color(0xFFFF4C00);
  static const Color primaryDark = const Color(0xFFDB4100);
  static const Color primaryDarker = const Color(0xFFA73200);

  static const Color secondaryColor = const Color(0xFF);

  static const Color black = const Color(0xFF333333);
  static const Color grey = const Color(0xFFF4F4F4);
  static const Color transparent = const Color(0x00000000);
}

class Dimensions {
  static const double small = 4.0;
  static const double medium = 8.0;
  static const double large = 16.0;
  static const double extraLarge = 16.0;
}

class TextSize {
  static const double small = 18.0;
  static const double medium = 24.0;
  static const double large = 32.0;
  static const double extraLarge = 48.0;
}