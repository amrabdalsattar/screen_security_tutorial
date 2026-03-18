import 'package:flutter/material.dart';
import 'package:screen_security_tutorial/core/security/secured_widget.dart';

extension SecureScreen on Widget {
  Widget secure() => SecuredWidget(child: this);
}
