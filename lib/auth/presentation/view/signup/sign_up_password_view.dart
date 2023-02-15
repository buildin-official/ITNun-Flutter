import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/default_button_sized_box.dart';
import 'package:itnun/core/presentation/widget/labeled_text_field.dart';

class SignUpPasswordView extends StatelessWidget {
  const SignUpPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("회원가입"),
        leading: const AppBackButton(),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AuthTitleWidget(
              title: "서비스 이용을 위해\n비밀번호를 입력해주세요",
              subtitle: "영어, 숫자 포함 8자 이상부터 사용할 수 있어요.",
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "비밀번호를 입력해주세요",
              ),
              keyboardType: TextInputType.text,
            ).labeled(
              label: "비밀번호",
              required: true,
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(hintText: "비밀번호를 다시 입력해주세요"),
              keyboardType: TextInputType.text,
            ).labeled(
              label: "비밀번호 확인",
              required: true,
            ),
            const Expanded(child: SizedBox.shrink()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: DefaultButtonSizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    context.push("/signup/userinfo");
                  },
                  child: const Text("다음"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
