import 'package:go_router/go_router.dart';
import 'package:itnun/auth/presentation/view/login_view.dart';
import 'package:itnun/auth/presentation/view/signup_complete_view.dart';
import 'package:itnun/auth/presentation/view/signup/signup_phone_view.dart';
import 'package:itnun/auth/presentation/view/signup/signup_userinfo_view.dart';
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
          path: "signupcomplete",
          builder: (context, state) => const SignupCompleteView(),
        ),
        GoRoute(
          path: "signup/phone",
          builder: (context,state)=>const SignupPhoneView(),
        ),
        GoRoute(
          path: "signup/userinfo",
          builder: (context,state)=>const SignupUserInfoView(),
        ),
      ],
    ),
  ],
);
