import 'package:flutter/material.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';

class SignupNewPasswordView extends StatelessWidget {
  const SignupNewPasswordView({Key? key}) : super(key: key);

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
              title: "새 비밀번호를\n입력해주세요",
              subtitle: "영어, 숫자 포함 8자 이상부터 사용할 수 있어요.",
            ),
            //Todo:새 비밀번호 입력,확인 TextField 만드셈
            const Expanded(child: SizedBox.shrink()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                color: Colors.blue,
                height: 56,
                width: double.infinity,
              ),
            ),
            //"비밀번호 변경 완료하기"
          ],
        ),
      ),
    );
  }
}
