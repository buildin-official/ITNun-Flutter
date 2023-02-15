import 'package:flutter/material.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';

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
            //Todo:닉네임 입력 TextField 만드셈
            const Expanded(child: SizedBox.shrink()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                color: Colors.blue,
                height: 56,
                width: double.infinity,
              ),
            ),
            //"다음"
          ],
        ),
      ),
    );
  }
}
