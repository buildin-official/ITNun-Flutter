import 'package:go_router/go_router.dart';
import 'package:itnun/core/presentation/view/intro_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const IntroView(),
    )
  ],
);
