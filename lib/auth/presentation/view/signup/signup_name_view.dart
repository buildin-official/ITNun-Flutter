import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/labeled_text_field.dart';

import '../../../../core/presentation/widget/default_button_sized_box.dart';

class SignupNameView extends StatelessWidget {
  const SignupNameView({Key? key}) : super(key: key);

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
              title: "서비스 이용을 위해\n닉네임을 입력해주세요",
              subtitle: "나중에 설정에서 수정할 수 있어요.",
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "닉네임을 입력해주세요",
              ),
              keyboardType: TextInputType.text,
            ).labeled(
              label: "닉네임",
              required: true,
            ),
            const Expanded(child: SizedBox.shrink()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: DefaultButtonSizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    context.push("/signup/password");
                  },
                  child: const Text("다음"),
                ),
              ),
            ),
            //"다음"
          ],
        ),
      ),
    );
  }
}
