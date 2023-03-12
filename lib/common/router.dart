import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/auth/presentation/view/login_view.dart';
import 'package:itnun/auth/presentation/view/password_find/password_find_new_view.dart';
import 'package:itnun/auth/presentation/view/password_find/password_find_phone_view.dart';
import 'package:itnun/auth/presentation/view/password_find/password_find_verification_view.dart';
import 'package:itnun/auth/presentation/view/setting/setting_notification_view.dart';
import 'package:itnun/auth/presentation/view/signup/sign_up_agreement_view.dart';
import 'package:itnun/auth/presentation/view/signup/sign_up_complete_view.dart';
import 'package:itnun/auth/presentation/view/signup/sign_up_name_view.dart';
import 'package:itnun/auth/presentation/view/signup/sign_up_password_view.dart';
import 'package:itnun/auth/presentation/view/signup/sign_up_phone_view.dart';
import 'package:itnun/auth/presentation/view/signup/sign_up_userinfo_view.dart';
import 'package:itnun/auth/presentation/view/signup/sign_up_verification_view.dart';
import 'package:itnun/core/presentation/view/intro_view.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const IntroView(),
      routes: [
        GoRoute(
          path: "login",
          builder: (context, state) => const LoginView(),
        ),
        GoRoute(
          path: "signup",
          builder: (context, state) => const SizedBox.shrink(),
          routes: [
            GoRoute(
              path: "complete",
              builder: (context, state) => const SignUpCompleteView(),
            ),
            GoRoute(
              path: "phone",
              builder: (context, state) => const SignUpPhoneView(),
            ),
            GoRoute(
              path: "userinfo",
              builder: (context, state) => const SignUpUserInfoView(),
            ),
            GoRoute(
              path: "verification",
              builder: (context, state) => const SignUpVerificationView(),
            ),
            GoRoute(
              path: "password",
              builder: (context, state) => const SignUpPasswordView(),
            ),
            GoRoute(
              path: "name",
              builder: (context, state) => const SignUpNameView(),
            ),
            GoRoute(
              path: "agreement",
              builder: (context, state) => const SignUpAgreementView(),
            ),
          ],
        ),
        GoRoute(
          path: "password",
          builder: (context, state) => const SizedBox.shrink(),
          routes: [
            GoRoute(
              path: "phone",
              builder: (context, state) => const PasswordFindPhoneView(),
            ),
            GoRoute(
              path: "verification",
              builder: (context, state) => const PasswordFindVerificationView(),
            ),
            GoRoute(
              path: "new",
              builder: (context, state) => const PasswordFindNewView(),
            ),
          ],
        ),
        GoRoute(
          path: "setting",
          builder: (context, state) => const SizedBox.shrink(),
          routes: [
            GoRoute(
              path: "notification",
              builder: (context, state) => const SettingNotificationView(),
            ),
          ]
        ),
      ],
    ),
  ],
);
