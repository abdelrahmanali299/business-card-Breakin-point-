import 'package:flutter/material.dart';
import 'package:test/constants/ui_constants.dart';
import 'package:test/widgets/recommendtion_section_body.dart';
import 'package:test/widgets/recommendtion_section_header.dart';

class RecommendtionSection extends StatelessWidget {
  const RecommendtionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecommendtionSectionHeader(),
        SizedBox(height: 10),
        RecommendtionSectionBody(items: UiConstants.itemsList),
      ],
    );
  }
}
