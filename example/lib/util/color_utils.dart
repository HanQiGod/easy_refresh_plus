import 'package:convert/convert.dart';
import 'package:flutter/material.dart';

class ColorUtils {
  /// Generate background color from string.
  static Color backgroundColorWithString(String value) {
    final strHex = hex.encode(
      '${value}color'.codeUnits.map((e) => e % 256).toList(),
    );
    String colorStr = '';
    const hexLength = 6;
    final spacing = strHex.length ~/ hexLength;
    for (int i = 0; i < hexLength; i++) {
      colorStr += String.fromCharCode(strHex.codeUnitAt(i * spacing + 1));
    }
    return Color(int.parse('ff$colorStr', radix: 16));
  }

  /// Generate foreground color from string.
  static Color foregroundColorWithString(String value) {
    final bgColor = backgroundColorWithString(value);
    final red = (bgColor.r * 255).round() & 0xff;
    final green = (bgColor.g * 255).round() & 0xff;
    final blue = (bgColor.b * 255).round() & 0xff;
    return red * 0.299 + green * 0.587 + blue * 0.114 > 186
        ? Colors.black
        : Colors.white;
  }
}
