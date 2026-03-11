import 'package:flutter/material.dart';
import 'package:screen_security_tutorial/widgets/custom_app_bar.dart';
import 'package:screen_security_tutorial/widgets/privacy_screen_content.dart';
import 'package:screen_security_tutorial/widgets/share_fab.dart';

class PrivacySecuredScreen extends StatelessWidget {
  const PrivacySecuredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      appBar: CustomAppBar(),
      floatingActionButton: ShareFAB(),
      body: PrivacyScreenContent(isSecured: false),
    );
  }
}
