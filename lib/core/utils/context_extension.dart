import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  /// Returns the screen width.
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Returns the screen height.
  double get screenHeight => MediaQuery.of(this).size.height;
}
