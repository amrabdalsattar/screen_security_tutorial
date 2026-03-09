import 'package:flutter/material.dart';
import 'package:screen_security_tutorial/core/security/secure_widget.dart';

extension Secure on Widget {
  Widget secure() => SecureWidget(child: this);
}
