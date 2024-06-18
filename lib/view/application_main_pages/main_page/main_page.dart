import 'package:comment_flutter_template/extentions.dart';
import 'package:comment_flutter_template/view/application_main_pages/main_page/landscape.dart';
import 'package:comment_flutter_template/view/application_main_pages/main_page/portrait.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortriat = context.screenW <= 600;

    switch (isPortriat) {
      case (true):
        return const MainPortrait();
      case (false):
        return const MainLandscape();
    }
  }
}
