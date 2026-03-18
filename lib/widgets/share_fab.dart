import 'package:flutter/material.dart';
import 'package:screen_security_tutorial/core/capture_screen_helper.dart';
import 'package:screen_security_tutorial/widgets/privacy_screen_content.dart';

class ShareFAB extends StatelessWidget {
  const ShareFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF00B050),
      foregroundColor: Colors.white,
      onPressed: () {
        CaptureScreenHelper.captureScreen(
          PrivacyScreenContent(isSecured: true),
          context,
        );
      },
      child: Icon(Icons.share),
    );
  }
}
