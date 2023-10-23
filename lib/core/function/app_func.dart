import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppFunction {
  static navigatToNextScreen(String route, BuildContext context) {
    return GoRouter.of(context).pushReplacement(route);
  }
  
}
