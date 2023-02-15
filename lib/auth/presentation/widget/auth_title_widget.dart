import 'package:flutter/material.dart';
import 'package:itnun/common/palette.dart';

class AuthTitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const AuthTitleWidget({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 70),
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Palette.text.shade600,
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
