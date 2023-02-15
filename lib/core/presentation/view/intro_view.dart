import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/core/presentation/widget/logo_with_text.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: _IntroLayout(),
      ),
    );
  }
}

class _IntroLayout extends StatelessWidget {
  const _IntroLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 190),
        const Text(
          "세상을 잇다.",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 6),
        const LogoWithText(width: 134),
        const Expanded(child: SizedBox.shrink()),
        SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: () => context.push("/login"),
            child: const Text("시작하기"),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
