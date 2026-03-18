import 'package:flutter/material.dart';
import 'package:screen_security_tutorial/core/extensions.dart';
import 'package:screen_security_tutorial/privacy_secured_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen Security Tutorial',

      home: const PrivacySecuredScreen().secure(), 
    );
  }
}
