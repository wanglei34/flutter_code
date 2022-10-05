import 'package:flutter/material.dart';

class Config {
  /// 主题颜色
  static const int _primaryColorValue = 0xFF6D4C41;
  static const Color primaryColor = Color(_primaryColorValue);
  static const MaterialColor primarySwatchColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(0xFFD7CCC8),
      100: Color(0xFFD7CCC8),
      200: Color(0xFFBCAAA4),
      300: Color(0xFFA1887F),
      400: Color(0xFF8D6E63),
      500: Color(_primaryColorValue),
      600: Color(0xFF6D4C41),
      700: Color(0xFF5D4037),
      800: Color(0xFF4E342E),
      900: Color(0xFF3E2723),
    },
  );
}
