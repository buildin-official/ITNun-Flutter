import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/default_button_sized_box.dart';
import 'package:itnun/core/presentation/widget/focus_unsetter.dart';

class SignUpUserInfoView extends HookWidget {
  const SignUpUserInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = useState(false);
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
                title: "더 나은 서비스를 위해\n추가 정보를 입력해주세요",
                subtitle: "이 정보는 선택적으로 입력할 수 있어요",
              ),
              //Todo:지역,직업,학력,학과/전공 입력 TextField 만드셈
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "(예비)창업자에요.",
                    style: TextStyle(
                      color: Palette.text.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CupertinoSwitch(
                    value: status.value,
                    onChanged: (value) => status.value = value,
                    activeColor: Palette.primary,
                  ),
                ],
              ),
              const Expanded(child: SizedBox.shrink()),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: DefaultButtonSizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      context.push("/signup/complete");
                    },
                    child: const Text("완료"),
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
