import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/login_page.dart';
import '../../features/auth/presentation/role_selection_page.dart';
import '../../features/student/presentation/student_dashboard_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const LoginPage()),
    GoRoute(
      path: '/roles',
      builder: (context, state) => const RoleSelectionPage(),
    ),
    GoRoute(
      path: '/student',
      builder: (context, state) => const StudentDashboardPage(),
    ),
  ],
);
