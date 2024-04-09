// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../constants.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String genderText;

  const GenderCard({super.key, required this.icon, required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 90,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          genderText,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
