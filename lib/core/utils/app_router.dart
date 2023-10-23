import 'package:go_router/go_router.dart';
import 'package:to_do_llist_app/features/auth/ui/view/signin_view.dart';
import 'package:to_do_llist_app/features/home/ui/view/home_view.dart';
import 'package:to_do_llist_app/features/onborading/ui/view/onborading_view.dart';
import 'package:to_do_llist_app/features/splash/ui/view/splash_view.dart';

import '../../features/auth/ui/view/signup_view.dart';

class AppRouter {
  static const signInViewRouter = "/signInView";
  static const signUpViewRouter = "/signUpView";
  static const onBoradingRouter = "/onBoradingView";
  static const homeRouter = "/homeView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: signInViewRouter,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: signUpViewRouter,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: onBoradingRouter,
        builder: (context, state) => const OnBoradingView(),
      ),
    ],
  );
}
