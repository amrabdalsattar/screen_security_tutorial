import 'dart:io';

import 'package:screen_protector/screen_protector.dart';

class ScreenSecurityHelper {
  static bool get _isAndroid => Platform.isAndroid;

  static Future<void> preventOn() async {
    if (_isAndroid) {
      await ScreenProtector.protectDataLeakageOn();
    } else {
      await ScreenProtector.protectDataLeakageWithBlur();
    }
  }

  static Future<void> preventOff() async {
    if (_isAndroid) {
      await ScreenProtector.protectDataLeakageOff();
    } else {
      await ScreenProtector.protectDataLeakageWithBlurOff();
    }
  }
}
