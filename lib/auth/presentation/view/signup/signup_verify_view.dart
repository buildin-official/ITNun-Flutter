import 'package:flutter/material.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';

class SignupVerifyView extends StatelessWidget {
  const SignupVerifyView({Key? key}) : super(key: key);

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
              title: "입력하신 전화번호로\n인증번호가 전송되었어요",
              subtitle: "메세지에서 확인해주세요.",
            ),
            //Todo:인증번호 입력 TextField 만드셈
            const Expanded(child: SizedBox.shrink()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                color: Colors.blue,
                height: 56,
                width: double.infinity,
              ),
            ),
            //"인증하기"
          ],
        ),
      ),
    );
  }
}
