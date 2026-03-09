import 'package:flutter/material.dart';
import 'package:screen_security_tutorial/core/security/screen_protector_util.dart';

class SecureWidget extends StatefulWidget {
  final Widget child;

  const SecureWidget({super.key, required this.child});

  @override
  State<SecureWidget> createState() => _SecureWidgetState();
}

class _SecureWidgetState extends State<SecureWidget> {
  @override
  void initState() {
    ScreenProtectorUtil.preventScreenshotOn();
    super.initState();
  }

  @override
  void dispose() {
    ScreenProtectorUtil.preventScreenshotOff();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
