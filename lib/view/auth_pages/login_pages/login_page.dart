import 'package:comment_flutter_template/extentions.dart';
import 'package:comment_flutter_template/view/auth_pages/login_pages/landscape.dart';
import 'package:comment_flutter_template/view/auth_pages/login_pages/portrait.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortriat = context.screenW <= 600;

    switch (isPortriat) {
      case (true):
        return const LoginPortriat();
      case (false):
        return const LoginLandscape();
    }
  }
}
