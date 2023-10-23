import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BuildTitileAndSubtitile extends StatelessWidget {
  const BuildTitileAndSubtitile({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          title,
          style: Style.textStyle28,
        ),
        
        Padding(
          padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
          child: Text(
            subtitle,
            style: Style.textStyle20,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
