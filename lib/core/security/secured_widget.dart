import 'package:flutter/material.dart';
import 'package:screen_security_tutorial/core/security/screen_security_helper.dart';

class SecuredWidget extends StatefulWidget {
  final Widget child;
  const SecuredWidget({super.key, required this.child});

  @override
  State<SecuredWidget> createState() => _SecuredWidgetState();
}

class _SecuredWidgetState extends State<SecuredWidget> {
  @override
  void initState() {
    ScreenSecurityHelper.preventOn();
    super.initState();
  }

  @override
  void dispose() {
    ScreenSecurityHelper.preventOff();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
