import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(Assets.logo))),
      )),
    );
  }
}
