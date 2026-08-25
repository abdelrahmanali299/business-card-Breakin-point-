import 'package:flutter/material.dart';

import 'package:test/widgets/categories_list_view.dart';
import 'package:test/widgets/deals_section.dart';
import 'package:test/widgets/header_section.dart';
import 'package:test/widgets/recommendtion_section.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderSection(),
              SizedBox(height: 10),
              SizedBox(height: 32, child: CategoriesListView()),
              SizedBox(height: 20),
              DealsSection(),
              SizedBox(height: 20),
              RecommendtionSection(),
            ],
          ),
        ),
      ),
    );
  }
}
