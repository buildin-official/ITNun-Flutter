import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/default_button_sized_box.dart';
import 'package:itnun/core/presentation/widget/focus_unsetter.dart';
import 'package:itnun/core/presentation/widget/labeled_text_field.dart';

class PasswordFindPhoneView extends StatelessWidget {
  const PasswordFindPhoneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("비밀번호 찾기"),
        leading: const AppBackButton(),
      ),
      body: FocusUnSetter(
        child: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthTitleWidget(
                title: "회원가입때 사용한\n전화번호를 입력해주세요",
                subtitle: "비밀번호 변경 메세지를 보내드릴게요.",
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "전화번호를 입력해주세요",
                ),
                keyboardType: TextInputType.number,
              ).labeled(label: "전화번호", required: true),
              const Expanded(child: SizedBox.shrink()),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: DefaultButtonSizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      context.push("/password/verification");
                    },
                    child: const Text("인증번호 전송하기"),
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
