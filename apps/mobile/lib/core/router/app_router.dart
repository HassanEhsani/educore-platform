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

// Student Pages
import '../../features/student/presentation/pages/student_profile_page.dart';
import '../../features/student/presentation/pages/student_grades_page.dart';
import '../../features/student/presentation/pages/student_attendance_page.dart';
import '../../features/student/presentation/pages/student_schedule_page.dart';
import '../../features/student/presentation/pages/student_notifications_page.dart';
import '../../features/student/presentation/pages/student_announcements_page.dart';
import '../../features/student/presentation/pages/student_settings_page.dart';

// Manager
import '../../features/manager/presentation/notifications/manager_notifications_page.dart';
import '../../features/manager/presentation/profile/manager_profile_page.dart';
import '../../features/manager/presentation/pages/manager_settings_page.dart';
import '../../features/manager/presentation/pages/manager_students_page.dart';
import '../../features/manager/presentation/pages/manager_attendance_page.dart';
import '../../features/manager/presentation/pages/manager_grades_page.dart';
import '../../features/manager/presentation/pages/manager_announcements_page.dart';

// Admin Profile
import '../../features/admin/presentation/profile/admin_profile_page.dart';
import '../../features/admin/presentation/profile/admin_edit_profile_page.dart';

// Admin Security
import '../../features/admin/presentation/security/admin_security_page.dart';
import '../../features/admin/presentation/security/admin_change_password_page.dart';
import '../../features/admin/presentation/security/admin_two_factor_page.dart';
import '../../features/admin/presentation/security/admin_security_activity_page.dart';

// Admin Notifications
import '../../features/admin/presentation/notifications/admin_notifications_page.dart';

// Admin Settings
import '../../features/admin/presentation/settings/admin_settings_page.dart';
import '../../features/admin/presentation/settings/admin_language_page.dart';
import '../../features/admin/presentation/settings/admin_theme_page.dart';
import '../../features/admin/presentation/settings/admin_notification_settings_page.dart';
import '../../features/admin/presentation/settings/admin_backup_page.dart';
import '../../features/admin/presentation/settings/admin_system_info_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (_, __) => const LoginPage()),

    GoRoute(path: '/roles', builder: (_, __) => const RoleSelectionPage()),

    // Student
    GoRoute(path: '/student', builder: (_, __) => const StudentDashboardPage()),

    GoRoute(
      path: '/student/profile',
      builder: (_, __) => const StudentProfilePage(),
    ),

    GoRoute(
      path: '/student/grades',
      builder: (_, __) => const StudentGradesPage(),
    ),

    GoRoute(
      path: '/student/attendance',
      builder: (_, __) => const StudentAttendancePage(),
    ),

    GoRoute(
      path: '/student/schedule',
      builder: (_, __) => const StudentSchedulePage(),
    ),

    GoRoute(
      path: '/student/notifications',
      builder: (_, __) => const StudentNotificationsPage(),
    ),

    GoRoute(
      path: '/student/announcements',
      builder: (_, __) => const StudentAnnouncementsPage(),
    ),

    GoRoute(
      path: '/student/settings',
      builder: (_, __) => const StudentSettingsPage(),
    ),

    // Teacher
    GoRoute(path: '/teacher', builder: (_, __) => const TeacherDashboardPage()),

    // Parent
    GoRoute(path: '/parent', builder: (_, __) => const ParentDashboardPage()),

    // Manager
    GoRoute(path: '/manager', builder: (_, __) => const ManagerDashboardPage()),

    GoRoute(
      path: '/manager/notifications',
      builder: (_, __) => const ManagerNotificationsPage(),
    ),

    GoRoute(
      path: '/manager/profile',
      builder: (_, __) => const ManagerProfilePage(),
    ),

    GoRoute(
      path: '/manager/settings',
      builder: (_, __) => const ManagerSettingsPage(),
    ),

    GoRoute(
      path: '/manager/students',
      builder: (_, __) => const ManagerStudentsPage(),
    ),

    GoRoute(
      path: '/manager/attendance',
      builder: (_, __) => const ManagerAttendancePage(),
    ),

    GoRoute(
      path: '/manager/grades',
      builder: (_, __) => const ManagerGradesPage(),
    ),

    GoRoute(
      path: '/manager/announcements',
      builder: (_, __) => const ManagerAnnouncementsPage(),
    ),

    // Admin
    GoRoute(path: '/admin', builder: (_, __) => const AdminDashboardPage()),

    GoRoute(
      path: '/admin/profile',
      builder: (_, __) => const AdminProfilePage(),
    ),

    GoRoute(
      path: '/admin/profile/edit',
      builder: (_, __) => const AdminEditProfilePage(),
    ),

    GoRoute(
      path: '/admin/security',
      builder: (_, __) => const AdminSecurityPage(),
    ),

    GoRoute(
      path: '/admin/security/change-password',
      builder: (_, __) => const AdminChangePasswordPage(),
    ),

    GoRoute(
      path: '/admin/security/two-factor',
      builder: (_, __) => const AdminTwoFactorPage(),
    ),

    GoRoute(
      path: '/admin/security/activity',
      builder: (_, __) => const AdminSecurityActivityPage(),
    ),

    GoRoute(
      path: '/admin/notifications',
      builder: (_, __) => const AdminNotificationsPage(),
    ),

    GoRoute(
      path: '/admin/settings',
      builder: (_, __) => const AdminSettingsPage(),
    ),

    GoRoute(
      path: '/admin/settings/language',
      builder: (_, __) => const AdminLanguagePage(),
    ),

    GoRoute(
      path: '/admin/settings/theme',
      builder: (_, __) => const AdminThemePage(),
    ),

    GoRoute(
      path: '/admin/settings/notifications',
      builder: (_, __) => const AdminNotificationSettingsPage(),
    ),

    GoRoute(
      path: '/admin/settings/backup',
      builder: (_, __) => const AdminBackupPage(),
    ),

    GoRoute(
      path: '/admin/settings/system-info',
      builder: (_, __) => const AdminSystemInfoPage(),
    ),
  ],
);
