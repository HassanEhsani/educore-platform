import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [GoRoute(path: '/', builder: (context, state) => const LoginPage())],
);
