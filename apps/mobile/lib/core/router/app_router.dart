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

// Admin Security
import '../../features/admin/presentation/security/admin_security_page.dart';
import '../../features/admin/presentation/security/admin_change_password_page.dart';
import '../../features/admin/presentation/security/admin_two_factor_page.dart';
import '../../features/admin/presentation/security/admin_security_activity_page.dart';

// Admin Settings
import '../../features/admin/presentation/settings/admin_settings_page.dart';
import '../../features/admin/presentation/settings/admin_language_page.dart';
import '../../features/admin/presentation/settings/admin_theme_page.dart';
import '../../features/admin/presentation/settings/admin_notification_settings_page.dart';
import '../../features/admin/presentation/settings/admin_backup_page.dart';
import '../../features/admin/presentation/settings/admin_system_info_page.dart';

// Admin Notifications
import '../../features/admin/presentation/notifications/admin_notifications_page.dart';
import '../../features/manager/presentation/manager_dashboard_page.dart';
import '../../features/manager/presentation/pages/manager_settings_page.dart';
import '../../features/manager/presentation/profile/manager_profile_page.dart';

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
    GoRoute(
      path: '/manager/settings',
      builder: (context, state) => const ManagerSettingsPage(),
    ),
    GoRoute(
      path: '/manager/profile',
      builder: (context, state) => const ManagerProfilePage(),
    ),

    // Admin Dashboard
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

    // Admin Security
    GoRoute(
      path: '/admin/security',
      builder: (context, state) => const AdminSecurityPage(),
    ),

    GoRoute(
      path: '/admin/security/change-password',
      builder: (context, state) => const AdminChangePasswordPage(),
    ),

    GoRoute(
      path: '/admin/security/two-factor',
      builder: (context, state) => const AdminTwoFactorPage(),
    ),

    GoRoute(
      path: '/admin/security/activity',
      builder: (context, state) => const AdminSecurityActivityPage(),
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
