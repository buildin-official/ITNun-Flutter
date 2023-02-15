import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/default_button_sized_box.dart';

class AgreementView extends StatelessWidget {
  const AgreementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text("회원가입"),
      ),
      body: const Padding(
        padding: kDefaultPadding,
        child: _AgreementLayout(),
      ),
    );
  }
}

class _AgreementLayout extends HookWidget {
  const _AgreementLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final service = useState(false);
    final privacy = useState(false);
    final collecting1 = useState(false);
    final collecting2 = useState(false);
    final notification = useState(false);

    final essentials = [service, privacy, collecting1];

    final sms = useState(false);
    final email = useState(false);

    const separator = SizedBox(height: 16);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthTitleWidget(
          title: "잇는 서비스 이용약관에\n동의해주세요",
          subtitle: "설정에서 다시 확인할 수 있어요.",
        ),
        _CheckWidget(
          title: "잇는 이용약관 (필수)",
          value: service.value,
          onChanged: (value) => service.value = value,
        ),
        separator,
        _CheckWidget(
          title: "개인정보처리방침 (필수)",
          value: privacy.value,
          onChanged: (value) => privacy.value = value,
        ),
        separator,
        _CheckWidget(
          title: "개인정보 수집 및 이용 동의 (필수)",
          value: collecting1.value,
          onChanged: (value) => collecting1.value = value,
        ),
        separator,
        _CheckWidget(
          title: "개인정보 수집 및 이용 동의 (선택)",
          value: collecting2.value,
          onChanged: (value) => collecting2.value = value,
        ),
        separator,
        _CheckWidget(
          title: "정보성 알림 수신 동의 (선택)",
          value: notification.value,
          onChanged: (value) {
            notification.value = value;

            if (!value) {
              sms.value = false;
              email.value = false;
            }
          },
        ),
        separator,
        Row(
          children: [
            const SizedBox(width: 28),
            _CheckWidget(
              title: "SMS",
              value: sms.value,
              onChanged: (value) => sms.value = value,
              disabled: !notification.value,
            ),
            const SizedBox(width: 36),
            _CheckWidget(
              title: "이메일",
              value: email.value,
              onChanged: (value) => email.value = value,
              disabled: !notification.value,
            ),
          ],
        ),
        const Expanded(child: SizedBox.shrink()),
        DefaultButtonSizedBox(
          child: ElevatedButton(
            onPressed:
                essentials.every((element) => element.value) ? () {} : null,
            child: const Text("다음"),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _CheckWidget extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool disabled;

  const _CheckWidget(
      {Key? key,
      required this.title,
      required this.value,
      required this.onChanged,
      this.disabled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color;

    if (disabled) {
      color = Palette.text.shade300;
    } else if (value) {
      color = Palette.text.shade800;
    } else {
      color = Palette.text.shade500;
    }

    return InkWell(
      onTap: disabled ? null : () => onChanged(!value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check,
            color: color,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
