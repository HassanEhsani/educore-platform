import '../domain/admin.dart';

class FakeAdminData {
  static const Admin admin = Admin(
    id: 'ADM001',

    name: 'Hassan Ehsani',

    email: 'admin@educore.com',

    phone: '+93 700 000 000',

    role: 'System Owner',

    totalBusinesses: 3,

    totalUsers: 2450,

    avatar: '',

    accountStatus: 'Active',

    lastLogin: 'Today, 10:30 AM',

    createdAt: 'January 2026',

    permissions: [
      'Manage Users',
      'Manage Businesses',
      'Financial Reports',
      'System Settings',
      'Security Control',
    ],
  );
}
