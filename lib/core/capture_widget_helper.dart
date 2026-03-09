import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class CaptureWidgetHelper {
  static ScreenshotController? _screenshotController;

  static ScreenshotController get _controller {
    _screenshotController ??= ScreenshotController();
    return _screenshotController!;
  }

  static Future<void> shareWidget(Widget screen, BuildContext context) async {
    final image = await _controller.captureFromWidget(screen, context: context);

    final params = ShareParams(
      files: [XFile.fromData(image, mimeType: 'image/png')],
      sharePositionOrigin: Rect.fromLTRB(1, 1, 0, 0),
    );

    SharePlus.instance.share(params);
  }

  void onClose() {
    _screenshotController = null;
  }
}
