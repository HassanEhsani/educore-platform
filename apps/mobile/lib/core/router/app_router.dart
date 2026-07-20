// lib/core/router/app_router.dart

import 'package:go_router/go_router.dart';

// Auth
import '../../features/auth/pages/login_page.dart';
import '../../features/auth/presentation/role_selection_page.dart';

// Dashboards
import '../../features/student/presentation/student_dashboard_page.dart';
import '../../features/teacher/presentation/teacher_dashboard_page.dart';
import '../../features/parent/presentation/parent_dashboard_page.dart';
import '../../features/manager/presentation/manager_dashboard_page.dart';
import '../../features/admin/presentation/admin_dashboard_page.dart';

// Admin Profile
import '../../features/admin/presentation/profile/admin_profile_page.dart';
import '../../features/admin/presentation/profile/admin_edit_profile_page.dart';
import '../../features/admin/presentation/profile/admin_security_page.dart';

// Admin Settings
import '../../features/admin/presentation/settings/admin_settings_page.dart';
import '../../features/admin/presentation/settings/admin_language_page.dart';
import '../../features/admin/presentation/settings/admin_theme_page.dart';
import '../../features/admin/presentation/settings/admin_notification_settings_page.dart';
import '../../features/admin/presentation/settings/admin_backup_page.dart';
import '../../features/admin/presentation/settings/admin_system_info_page.dart';

// Admin Notifications
import '../../features/admin/presentation/notifications/admin_notifications_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(path: '/', builder: (context, state) => const LoginPage()),

    GoRoute(
      path: '/roles',
      builder: (context, state) => const RoleSelectionPage(),
    ),

    // Dashboards
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

    // Admin
    GoRoute(
      path: '/admin',
      builder: (context, state) => const AdminDashboardPage(),
    ),

    // Admin Profile
    GoRoute(
      path: '/admin/profile',
      builder: (context, state) => const AdminProfilePage(),
    ),

    GoRoute(
      path: '/admin/profile/edit',
      builder: (context, state) => const AdminEditProfilePage(),
    ),

    GoRoute(
      path: '/admin/security',
      builder: (context, state) => const AdminSecurityPage(),
    ),

    // Admin Notifications
    GoRoute(
      path: '/admin/notifications',
      builder: (context, state) => const AdminNotificationsPage(),
    ),

    // Admin Settings
    GoRoute(
      path: '/admin/settings',
      builder: (context, state) => const AdminSettingsPage(),
    ),

    GoRoute(
      path: '/admin/settings/language',
      builder: (context, state) => const AdminLanguagePage(),
    ),

    GoRoute(
      path: '/admin/settings/theme',
      builder: (context, state) => const AdminThemePage(),
    ),

    GoRoute(
      path: '/admin/settings/notifications',
      builder: (context, state) => const AdminNotificationSettingsPage(),
    ),

    GoRoute(
      path: '/admin/settings/backup',
      builder: (context, state) => const AdminBackupPage(),
    ),

    GoRoute(
      path: '/admin/settings/system-info',
      builder: (context, state) => const AdminSystemInfoPage(),
    ),
  ],
);
