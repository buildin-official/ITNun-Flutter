import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/default_button_sized_box.dart';
import 'package:itnun/core/presentation/widget/focus_unsetter.dart';
import 'package:itnun/core/presentation/widget/labeled_text_field.dart';

class SignUpVerificationView extends HookWidget {
  const SignUpVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("회원가입"),
        leading: const AppBackButton(),
      ),
      body: FocusUnSetter(
        child: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthTitleWidget(
                title: "입력하신 전화번호로\n인증번호가 전송되었어요",
                subtitle: "메세지에서 확인해주세요.",
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "인증번호를 입력해주세요",
                ),
                keyboardType: TextInputType.number,
              ).labeled(label: "인증번호", required: true),
              const Expanded(child: SizedBox.shrink()),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: DefaultButtonSizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      context.push("/signup/name");
                    },
                    child: const Text("인증하기"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
