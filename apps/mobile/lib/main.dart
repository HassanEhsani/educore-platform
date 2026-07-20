// lib/main.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router/app_router.dart';
import 'core/services/app_initializer.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appInitializer = AppInitializer();

  await appInitializer.initialize();

  runApp(const ProviderScope(child: EduCoreApp()));
}

class EduCoreApp extends StatefulWidget {
  const EduCoreApp({super.key});

  @override
  State<EduCoreApp> createState() => _EduCoreAppState();
}

class _EduCoreAppState extends State<EduCoreApp> {
  @override
  void initState() {
    super.initState();

    themeController.addListener(_themeChanged);
  }

  @override
  void dispose() {
    themeController.removeListener(_themeChanged);

    super.dispose();
  }

  void _themeChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      title: 'EduCore',

      theme: appTheme,

      darkTheme: ThemeData.dark(useMaterial3: true),

      themeMode: themeController.themeMode,

      routerConfig: appRouter,
    );
  }
}
