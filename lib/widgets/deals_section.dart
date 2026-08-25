import 'package:flutter/material.dart';

import 'package:test/widgets/deals_body_section.dart';
import 'package:test/widgets/deals_header_section.dart';

class DealsSection extends StatelessWidget {
  const DealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [DealsHeaderSection(), DealsBodySection()]);
  }
}
