import 'package:flutter/material.dart';

class DefaultButtonSizedBox extends StatelessWidget {
  final Widget child;

  const DefaultButtonSizedBox({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: child,
    );
  }
}
