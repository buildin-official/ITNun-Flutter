import 'package:flutter/material.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';

class SignupFindPasswordView extends StatelessWidget {
  const SignupFindPasswordView({Key? key}) : super(key: key);

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
              title: "회원가입때 사용한\n전화번호를 입력해주세요",
              subtitle: "비밀번호 변경 메세지를 보내드릴게요.",
            ),
            //Todo:전화번호 입력 TextField 만드셈
            const Expanded(child: SizedBox.shrink()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                color: Colors.blue,
                height: 56,
                width: double.infinity,
              ),
            ),
            //"인증번호 전송하기"
          ],
        ),
      ),
    );
  }
}
