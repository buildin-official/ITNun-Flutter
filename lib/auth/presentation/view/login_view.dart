import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/default_button_sized_box.dart';
import 'package:itnun/core/presentation/widget/focus_unsetter.dart';
import 'package:itnun/core/presentation/widget/labeled_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text("로그인"),
      ),
      body: const FocusUnSetter(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: kDefaultPadding,
            child: _LoginLayout(),
          ),
        ),
      ),
    );
  }
}

class _LoginLayout extends HookWidget {
  const _LoginLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phone = useState("");
    final password = useState("");

    return Column(
      children: [
        const SizedBox(height: 70),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "전화번호",
          ),
          validator: (s) =>
              phoneRegex.hasMatch(s!) ? null : "전화번호를 다시 한번 확인해주세요",
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.phone,
          autofillHints: const [AutofillHints.telephoneNumber],
          onChanged: (s) => phone.value = s,
        ).labeled(
          label: "전화번호",
          isValid: phoneRegex.hasMatch(phone.value),
        ),
        const SizedBox(height: 44),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "비밀번호",
          ),
          validator: (s) => s!.length >= 8 ? null : "비밀번호를 다시 한번 확인해주세요",
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (s) => password.value = s,
          obscureText: true,
          autofillHints: const [AutofillHints.password],
        ).labeled(
          label: "비밀번호",
          isValid: password.value.length >= 8,
        ),
        const SizedBox(height: 20),
        DefaultButtonSizedBox(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("로그인"),
          ),
        ),
        const SizedBox(height: 18),
        TextButton(
          onPressed: () {
            context.push("/password/phone");
          },
          child: Text(
            "비밀번호 찾기",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Palette.text.shade700,
            ),
          ),
        ),
        Divider(color: Palette.text.shade100),
        const SizedBox(height: 18),
        DefaultButtonSizedBox(
          child: OutlinedButton(
            onPressed: () {
              context.push("/signup/agreement");
            },
            child: const Text("회원가입"),
          ),
        ),
      ],
    );
  }
}
