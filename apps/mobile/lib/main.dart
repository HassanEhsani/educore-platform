import 'package:flutter/material.dart';

import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const EduCoreApp());
}

class EduCoreApp extends StatelessWidget {
  const EduCoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'EduCore',
      theme: appTheme,
      routerConfig: appRouter,
    );
  }
}
