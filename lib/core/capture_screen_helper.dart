import 'package:flutter/widgets.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class CaptureScreenHelper {
  static ScreenshotController? _screenshotController;

  static ScreenshotController get _controller {
    _screenshotController ??= ScreenshotController();
    return _screenshotController!;
  }

  static Future<void> captureScreen(Widget screen, BuildContext context) async {
    final image = await _controller.captureFromWidget(screen, context: context);

    final params = ShareParams(
      files: [XFile.fromData(image, mimeType: 'image/png')],
      sharePositionOrigin: Rect.fromLTRB(0, 0, 1, 1),
    );

    SharePlus.instance.share(params);
  }
}
