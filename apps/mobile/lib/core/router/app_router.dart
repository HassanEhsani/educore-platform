import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_page.dart';
import '../../features/auth/presentation/role_selection_page.dart';

import '../../features/student/presentation/student_dashboard_page.dart';
import '../../features/teacher/presentation/teacher_dashboard_page.dart';
import '../../features/parent/presentation/parent_dashboard_page.dart';
import '../../features/manager/presentation/manager_dashboard_page.dart';
import '../../features/notification/presentation/notification_page.dart';

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

    GoRoute(
      path: '/teacher',
      builder: (context, state) => const TeacherDashboardPage(),
    ),

    GoRoute(
      path: '/parent',
      builder: (context, state) => const ParentDashboardPage(),
    ),

    GoRoute(
      path: '/manager',
      builder: (context, state) => const ManagerDashboardPage(),
    ),
    GoRoute(
      path: '/teacher',
      builder: (context, state) => const TeacherDashboardPage(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationPage(),
    ),
  ],
);
