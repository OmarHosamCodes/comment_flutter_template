import 'package:comment_flutter_template/extentions.dart';
import 'package:comment_flutter_template/view/onboarding_pages/landscape.dart';
import 'package:comment_flutter_template/view/onboarding_pages/portrait.dart';

import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortriat = context.screenW <= 600;

    switch (isPortriat) {
      case true:
        return const OnboardingPortrait();
      case false:
        return const OnboardingLandscape();
    }
  }
}
