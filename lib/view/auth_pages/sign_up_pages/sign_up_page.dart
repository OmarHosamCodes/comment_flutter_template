import 'package:comment_flutter_template/extentions.dart';
import 'package:comment_flutter_template/view/auth_pages/sign_up_pages/landscape.dart';
import 'package:comment_flutter_template/view/auth_pages/sign_up_pages/portrait.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortriat = context.screenW <= 600;

    switch (isPortriat) {
      case (true):
        return const SignUpPortrait();
      case (false):
        return const SignUpLanscape();
    }
  }
}
