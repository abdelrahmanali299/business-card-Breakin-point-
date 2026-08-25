import 'package:flutter/material.dart';

class DealsHeaderSection extends StatelessWidget {
  const DealsHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Delas of the day',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          'see all',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
