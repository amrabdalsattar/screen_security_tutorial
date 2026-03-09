import 'package:screen_protector/screen_protector.dart';

class ScreenProtectorUtil {
  static void _preventAndroidScreenshotOn() async =>
      await ScreenProtector.protectDataLeakageOn();

  static void _protectAndroidDataLeakageOff() async =>
      await ScreenProtector.protectDataLeakageOff();

  static void _preventIOSScreenshotOn() async =>
      await ScreenProtector.preventScreenshotOn();

  static void _preventIOSScreenshotOff() async =>
      await ScreenProtector.preventScreenshotOff();

  static void preventScreenshotOn() {
    _preventAndroidScreenshotOn();
    _preventIOSScreenshotOn();
  }

  static void preventScreenshotOff() {
    _preventIOSScreenshotOff();
    _protectAndroidDataLeakageOff();
  }
}
