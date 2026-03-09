import 'package:flutter/material.dart';

class SecurityStatusHeader extends StatelessWidget {
  final bool isSecured;

  const SecurityStatusHeader({super.key, required this.isSecured});

  @override
  Widget build(BuildContext context) {
    final statusColor =
        isSecured ? const Color(0xFF10B981) : const Color(0xFFEF4444);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: statusColor.withValues(alpha: 0.2),
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Icon(
            isSecured ? Icons.verified_user : Icons.gpp_maybe,
            color: statusColor,
            size: 48,
          ),
          const SizedBox(height: 12),
          Text(
            isSecured ? "PROTECTION ENABLED" : "PROTECTION DISABLED",
            style: TextStyle(
              color: statusColor,
              fontWeight: FontWeight.w800,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
