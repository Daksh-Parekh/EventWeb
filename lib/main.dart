import 'package:events_web/core/theme/app_theme.dart';
import 'package:events_web/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WebCryptoEvents',
      theme: WebTheme.lightTheme,
      getPages: AppRoutes.pages,
    );
  }
}
