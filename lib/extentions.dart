import 'package:flutter/material.dart';

///some kind of trick
extension ScreenDimension on BuildContext {
  ///screen height
  double get screenH => MediaQuery.of(this).size.height;

  ///screen width
  double get screenW => MediaQuery.of(this).size.width;
}
