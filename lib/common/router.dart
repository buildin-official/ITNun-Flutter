import 'package:go_router/go_router.dart';
import 'package:itnun/auth/presentation/view/find/find_newpassword_view.dart';
import 'package:itnun/auth/presentation/view/find/find_password_view.dart';
import 'package:itnun/auth/presentation/view/find/find_verify_view.dart';
import 'package:itnun/auth/presentation/view/login_view.dart';
import 'package:itnun/auth/presentation/view/signup/signup_complete_view.dart';
import 'package:itnun/auth/presentation/view/signup/signup_name_view.dart';
import 'package:itnun/auth/presentation/view/signup/signup_password_view.dart';
import 'package:itnun/auth/presentation/view/signup/signup_phone_view.dart';
import 'package:itnun/auth/presentation/view/signup/signup_userinfo_view.dart';
import 'package:itnun/auth/presentation/view/signup/signup_verify_view.dart';
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
          path: "signup/complete",
          builder: (context, state) => const SignupCompleteView(),
        ),
        GoRoute(
          path: "signup/phone",
          builder: (context, state) => const SignupPhoneView(),
        ),
        GoRoute(
          path: "signup/userinfo",
          builder: (context, state) => const SignupUserInfoView(),
        ),
        GoRoute(
          path: "signup/verify",
          builder: (context, state) => const SignupVerifyView(),
        ),
        GoRoute(
          path: "signup/password",
          builder: (context, state) => const SignupPasswordView(),
        ),
        GoRoute(
          path: "signup/name",
          builder: (context, state) => const SignupNameView(),
        ),
        GoRoute(
          path: "find/password",
          builder: (context, state) => const FindPasswordView(),
        ),
        GoRoute(
          path: "find/verify",
          builder: (context, state) => const FindVerifyView(),
        ),
        GoRoute(
          path: "find/newpassword",
          builder: (context, state) => const NewPasswordView(),
        ),
        GoRoute(
          path: "signup/verify",
          builder: (context,state)=>const SignupVerifyView(),
        ),
        GoRoute(
          path: "signup/password",
          builder: (context,state)=>const SignupPasswordView(),
        ),
        GoRoute(
          path: "signup/name",
          builder: (context,state)=>const SignupNameView(),
        ),
        GoRoute(
          path: "find/password",
          builder: (context,state)=>const FindPasswordView(),
        ),
        GoRoute(
          path: "find/verify",
          builder: (context,state)=>const FindVerifyView(),
        ),
        GoRoute(
          path: "find/newpassword",
          builder: (context,state)=>const NewPasswordView(),
        ),


      ],
    ),
  ],
);
