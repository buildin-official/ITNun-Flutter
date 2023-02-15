import 'package:flutter/material.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text("로그인"),
      ),
      body: _LoginLayout(),
    );
  }
}

class _LoginLayout extends StatelessWidget {
  const _LoginLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
