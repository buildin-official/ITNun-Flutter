import 'package:flutter/material.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';

class SignupCompleteView extends StatelessWidget {
  const SignupCompleteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text("회원가입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 108,
              height: 108,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Palette.primary,
              ),
              child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 72,
              ),
            ),
            Container(height: 36),
            const Text(
              "환영합니다, 허관무님!",
              style : TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600
              ),
            ),
          ],
        ),
      ),
    );
  }
}
