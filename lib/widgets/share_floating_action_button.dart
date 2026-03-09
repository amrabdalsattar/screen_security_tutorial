import 'package:flutter/material.dart';

class ShareFloatingActionButton extends StatelessWidget {
  final bool isSecured;
  final VoidCallback onPressed;

  const ShareFloatingActionButton({
    super.key,
    required this.isSecured,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOutBack,
        height: 60,
        width: isSecured ? 160 : 60, // Expands when secured
        decoration: BoxDecoration(
          color: isSecured ? const Color(0xFF10B981) : const Color(0xFFEF4444),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: (isSecured
                      ? const Color(0xFF10B981)
                      : const Color(0xFFEF4444))
                  .withValues(alpha: 0.4),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon Switcher
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder:
                  (child, animation) =>
                      ScaleTransition(scale: animation, child: child),
              child: Icon(
                isSecured ? Icons.lock_rounded : Icons.lock_open_rounded,
                key: ValueKey(isSecured),
                color: Colors.white,
                size: 26,
              ),
            ),

            // Text that only appears when Secured
            if (isSecured)
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "SECURED",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
