import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router/app_router.dart';
import 'core/services/app_initializer.dart';
import 'core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appInitializer = AppInitializer();
  await appInitializer.initialize();

  runApp(const ProviderScope(child: EduCoreApp()));
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
