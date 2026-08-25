import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello Elgamal',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
