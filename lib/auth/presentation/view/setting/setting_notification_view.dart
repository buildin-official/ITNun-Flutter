import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';

class SettingNotificationView extends StatelessWidget {
  const SettingNotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: const AppBackButton(),
        title: const Text("알림 설정")
      ),
      body: const Padding(
        padding: EdgeInsetsDirectional.all(12),
        child:_SettingNotificationLayout()
      )
    );
  }
}

class _SettingNotificationLayout extends HookWidget {
  const _SettingNotificationLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pushNotification = useState(false);
    final emailNotification = useState(false);
    final notification = useState(false);
    final policyNotification = useState(false);
    final spaceNotification = useState(false);
    final hireNotification = useState(false);
    final newsNotification = useState(false);
    // TODO: change this parts with bloc

    return Column(
      children: [
        _NotificationSwitchContainer(
          title: "알림 수단",
          children: [
            _ToggleSwitch(status: pushNotification, title: "푸시 알림"),
            const SizedBox(height:5),
            _ToggleSwitch(status: emailNotification, title: "이메일 알림"),
          ]
        ),
        const SizedBox(height:10),
        _NotificationSwitchContainer(
            title: "알림 정보",
            children: [
              _ToggleSwitch(status: notification, title: "공지사항"),
              const SizedBox(height:5),
              _ToggleSwitch(status: policyNotification, title: "정책"),
              const SizedBox(height:5),
              _ToggleSwitch(status: spaceNotification, title: "공간"),
              const SizedBox(height:5),
              _ToggleSwitch(status: hireNotification, title: "채용"),
              const SizedBox(height:5),
              _ToggleSwitch(status: newsNotification, title: "뉴스"),
            ]
        )
      ],
    );
  }
}

class _NotificationSwitchContainer extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _NotificationSwitchContainer({Key? key, required this.title, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: "SUIT",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Palette.text.shade600,
                ),
              ),
              const SizedBox(height:12.5),
              Column(
                children: children
              )
            ],
          ),
        )
    );
  }
}

class _ToggleSwitch extends StatelessWidget {
  final ValueNotifier<bool> status;
  final String title;

  const _ToggleSwitch({Key? key, required this.status, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
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
        )
      ],
    );
  }
}
