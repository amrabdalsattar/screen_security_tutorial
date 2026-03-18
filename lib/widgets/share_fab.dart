import 'package:flutter/material.dart';

class ShareFAB extends StatelessWidget {
  const ShareFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF00B050),
      foregroundColor: Colors.white,
      onPressed: () {},
      child: Icon(Icons.share),
    );
  }
}
