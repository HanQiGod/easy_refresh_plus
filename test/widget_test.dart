import 'package:flutter/material.dart';
import 'package:easy_refresh_plus/easy_refresh_plus.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('easy_refresh_plus export smoke test', () {
    final widget = EasyRefresh(
      header: const ClassicHeader(),
      footer: const ClassicFooter(),
      child: ListView(),
    );

    expect(widget, isA<EasyRefresh>());
  });
}
