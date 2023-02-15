import 'package:flutter/material.dart';

class FocusUnSetter extends StatelessWidget {
  final Widget child;

  const FocusUnSetter({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      behavior: HitTestBehavior.opaque,
      child: child,
    );
  }
}
