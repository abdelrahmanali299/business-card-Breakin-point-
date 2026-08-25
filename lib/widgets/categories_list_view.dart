import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<String> categories = const [
    'All',
    'Electronics',
    'Clothing',
    'Shoes',
    'Accessories',
    'Electronics',
    'Clothing',
    'Shoes',
    'Accessories',
    'Electronics',
    'Clothing',
    'Shoes',
    'Accessories',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(width: 10),
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 3,
              width: 20,
              decoration: BoxDecoration(color: Colors.black),
            ),
          ],
        );
      },
    );
  }
}
