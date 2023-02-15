import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/default_button_sized_box.dart';

class SignUpCompleteView extends StatelessWidget {
  const SignUpCompleteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text("회원가입"),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox.shrink()),
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
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const Expanded(child: SizedBox.shrink()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: DefaultButtonSizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    context.push("/login");
                  },
                  child: const Text("시작하기"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
