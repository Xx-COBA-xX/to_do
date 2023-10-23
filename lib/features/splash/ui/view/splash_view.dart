import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_llist_app/core/utils/app_router.dart';
import 'package:to_do_llist_app/features/splash/ui/view/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      navigatToAuthView();
    });
  }

  navigatToAuthView() {
    GoRouter.of(context).pushReplacement(
      AppRouter.onBoradingRouter,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}

