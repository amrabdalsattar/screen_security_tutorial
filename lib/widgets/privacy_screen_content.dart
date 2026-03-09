import 'package:flutter/material.dart';
import 'package:screen_security_tutorial/widgets/data_privacy_tile.dart';
import 'package:screen_security_tutorial/widgets/section_label.dart';
import 'package:screen_security_tutorial/widgets/security_status_header.dart';

class PrivacyScreenContent extends StatelessWidget {
  final bool isSecured;
  const PrivacyScreenContent({super.key, required this.isSecured});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8F9FB),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SecurityStatusHeader(isSecured: isSecured),
            const SizedBox(height: 32),
            SectionLabel(label: "PERSONAL DETAILS"),
            const SizedBox(height: 12),

            DataPrivacyTile(
              label: "Name",
              value: "Amr Abdelsattar",
              icon: Icons.person_2_outlined,
              isSecured: false,
            ),

            DataPrivacyTile(
              label: "Email Address",
              value: "amrabdelsattar.dev@gmail.com",
              icon: Icons.alternate_email,
              isSecured: false,
            ),
            DataPrivacyTile(
              label: "API Key",
              value: "sk_live_51MzaXkL9p2R1v7",
              icon: Icons.vpn_key_outlined,
              isSecured: isSecured,
            ),
            DataPrivacyTile(
              label: "Phone Number",
              value: "+20 123 456 7890",
              icon: Icons.phone_android,
              isSecured: isSecured,
            ),
          ],
        ),
      ),
    );
  }
}
