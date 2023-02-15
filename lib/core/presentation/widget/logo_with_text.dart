import 'package:flutter/material.dart';
import 'package:itnun/generated/assets.dart';

class LogoWithText extends StatelessWidget {
  final double width;

  const LogoWithText({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image.asset(Assets.imagesLogo),
          ),
          const SizedBox(width: 6),
          const Expanded(
            flex: 2,
            child: FittedBox(
              child: Text(
                "잇는",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
