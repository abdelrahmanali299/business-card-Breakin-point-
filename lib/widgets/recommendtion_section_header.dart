import 'package:flutter/material.dart';

class RecommendtionSectionHeader extends StatelessWidget {
  const RecommendtionSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Recommended for you",
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
