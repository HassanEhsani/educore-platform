import 'package:go_router/go_router.dart';

// Auth
import '../../features/auth/pages/login_page.dart';
import '../../features/auth/presentation/role_selection_page.dart';

// Dashboards
import '../../features/admin/presentation/admin_dashboard_page.dart';
import '../../features/manager/presentation/manager_dashboard_page.dart';
import '../../features/parent/presentation/parent_dashboard_page.dart';
import '../../features/student/presentation/student_dashboard_page.dart';
import '../../features/teacher/presentation/teacher_dashboard_page.dart';

// Student Pages
import '../../features/student/presentation/pages/student_academic_progress_page.dart';
import '../../features/student/presentation/pages/student_announcements_page.dart';
import '../../features/student/presentation/pages/student_attendance_page.dart';
import '../../features/student/presentation/pages/student_grades_page.dart';
import '../../features/student/presentation/pages/student_notifications_page.dart';
import '../../features/student/presentation/pages/student_profile_page.dart';
import '../../features/student/presentation/pages/student_schedule_page.dart';
import '../../features/student/presentation/pages/student_settings_page.dart';

// Parent Pages
import '../../features/parent/presentation/pages/parent_attendance_page.dart';
import '../../features/parent/presentation/pages/parent_children_page.dart';
import '../../features/parent/presentation/pages/parent_fees_page.dart';
import '../../features/parent/presentation/pages/parent_grades_page.dart';
import '../../features/parent/presentation/pages/parent_homework_page.dart';
import '../../features/parent/presentation/pages/parent_messages_page.dart';
import '../../features/parent/presentation/pages/parent_notifications_page.dart';
import '../../features/parent/presentation/pages/parent_profile_page.dart';
import '../../features/parent/presentation/pages/parent_settings_page.dart';

// Manager Pages
import '../../features/manager/presentation/notifications/manager_notifications_page.dart';
import '../../features/manager/presentation/pages/manager_announcements_page.dart';
import '../../features/manager/presentation/pages/manager_attendance_page.dart';
import '../../features/manager/presentation/pages/manager_grades_page.dart';
import '../../features/manager/presentation/pages/manager_settings_page.dart';
import '../../features/manager/presentation/pages/manager_students_page.dart';
import '../../features/manager/presentation/profile/manager_profile_page.dart';

// Admin Pages
import '../../features/admin/presentation/notifications/admin_notifications_page.dart';
import '../../features/admin/presentation/profile/admin_edit_profile_page.dart';
import '../../features/admin/presentation/profile/admin_profile_page.dart';
import '../../features/admin/presentation/security/admin_change_password_page.dart';
import '../../features/admin/presentation/security/admin_security_activity_page.dart';
import '../../features/admin/presentation/security/admin_security_page.dart';
import '../../features/admin/presentation/security/admin_two_factor_page.dart';
import '../../features/admin/presentation/settings/admin_backup_page.dart';
import '../../features/admin/presentation/settings/admin_language_page.dart';
import '../../features/admin/presentation/settings/admin_notification_settings_page.dart';
import '../../features/admin/presentation/settings/admin_settings_page.dart';
import '../../features/admin/presentation/settings/admin_system_info_page.dart';
import '../../features/admin/presentation/settings/admin_theme_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // ================= AUTH =================
    GoRoute(path: '/', builder: (_, _) => const LoginPage()),

    GoRoute(path: '/roles', builder: (_, _) => const RoleSelectionPage()),

    // ================= STUDENT =================
    GoRoute(path: '/student', builder: (_, _) => const StudentDashboardPage()),

    GoRoute(
      path: '/student/profile',
      builder: (_, _) => const StudentProfilePage(),
    ),

    GoRoute(
      path: '/student/grades',
      builder: (_, _) => const StudentGradesPage(),
    ),

    GoRoute(
      path: '/student/attendance',
      builder: (_, _) => const StudentAttendancePage(),
    ),

    GoRoute(
      path: '/student/schedule',
      builder: (_, _) => const StudentSchedulePage(),
    ),

    GoRoute(
      path: '/student/notifications',
      builder: (_, _) => const StudentNotificationsPage(),
    ),

    GoRoute(
      path: '/student/announcements',
      builder: (_, _) => const StudentAnnouncementsPage(),
    ),

    GoRoute(
      path: '/student/settings',
      builder: (_, _) => const StudentSettingsPage(),
    ),

    GoRoute(
      path: '/student/academic-progress',
      builder: (_, _) => const StudentAcademicProgressPage(),
    ),

    // ================= TEACHER =================
    GoRoute(path: '/teacher', builder: (_, _) => const TeacherDashboardPage()),

    // ================= PARENT =================
    GoRoute(path: '/parent', builder: (_, _) => const ParentDashboardPage()),

    GoRoute(
      path: '/parent/children',
      builder: (_, _) => const ParentChildrenPage(),
    ),

    GoRoute(
      path: '/parent/grades',
      builder: (_, _) => const ParentGradesPage(),
    ),

    GoRoute(
      path: '/parent/attendance',
      builder: (_, _) => const ParentAttendancePage(),
    ),

    GoRoute(path: '/parent/fees', builder: (_, _) => const ParentFeesPage()),

    GoRoute(
      path: '/parent/homework',
      builder: (_, _) => const ParentHomeworkPage(),
    ),

    GoRoute(
      path: '/parent/messages',
      builder: (_, _) => const ParentMessagesPage(),
    ),

    GoRoute(
      path: '/parent/notifications',
      builder: (_, _) => const ParentNotificationsPage(),
    ),

    GoRoute(
      path: '/parent/profile',
      builder: (_, _) => const ParentProfilePage(),
    ),

    GoRoute(
      path: '/parent/settings',
      builder: (_, _) => const ParentSettingsPage(),
    ),

    // ================= MANAGER =================
    GoRoute(path: '/manager', builder: (_, _) => const ManagerDashboardPage()),

    GoRoute(
      path: '/manager/notifications',
      builder: (_, _) => const ManagerNotificationsPage(),
    ),

    GoRoute(
      path: '/manager/profile',
      builder: (_, _) => const ManagerProfilePage(),
    ),

    GoRoute(
      path: '/manager/settings',
      builder: (_, _) => const ManagerSettingsPage(),
    ),

    GoRoute(
      path: '/manager/students',
      builder: (_, _) => const ManagerStudentsPage(),
    ),

    GoRoute(
      path: '/manager/attendance',
      builder: (_, _) => const ManagerAttendancePage(),
    ),

    GoRoute(
      path: '/manager/grades',
      builder: (_, _) => const ManagerGradesPage(),
    ),

    GoRoute(
      path: '/manager/announcements',
      builder: (_, _) => const ManagerAnnouncementsPage(),
    ),

    // ================= ADMIN =================
    GoRoute(path: '/admin', builder: (_, _) => const AdminDashboardPage()),

    GoRoute(
      path: '/admin/profile',
      builder: (_, _) => const AdminProfilePage(),
    ),

    GoRoute(
      path: '/admin/profile/edit',
      builder: (_, _) => const AdminEditProfilePage(),
    ),

    GoRoute(
      path: '/admin/security',
      builder: (_, _) => const AdminSecurityPage(),
    ),

    GoRoute(
      path: '/admin/security/change-password',
      builder: (_, _) => const AdminChangePasswordPage(),
    ),

    GoRoute(
      path: '/admin/security/two-factor',
      builder: (_, _) => const AdminTwoFactorPage(),
    ),

    GoRoute(
      path: '/admin/security/activity',
      builder: (_, _) => const AdminSecurityActivityPage(),
    ),

    GoRoute(
      path: '/admin/notifications',
      builder: (_, _) => const AdminNotificationsPage(),
    ),

    GoRoute(
      path: '/admin/settings',
      builder: (_, _) => const AdminSettingsPage(),
    ),

    GoRoute(
      path: '/admin/settings/language',
      builder: (_, _) => const AdminLanguagePage(),
    ),

    GoRoute(
      path: '/admin/settings/theme',
      builder: (_, _) => const AdminThemePage(),
    ),

    GoRoute(
      path: '/admin/settings/notifications',
      builder: (_, _) => const AdminNotificationSettingsPage(),
    ),

    GoRoute(
      path: '/admin/settings/backup',
      builder: (_, _) => const AdminBackupPage(),
    ),

    GoRoute(
      path: '/admin/settings/system-info',
      builder: (_, _) => const AdminSystemInfoPage(),
    ),
  ],
);
