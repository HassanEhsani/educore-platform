// lib/features/admin/data/fake_admin_data.dart

import '../domain/admin.dart';

class FakeAdminData {
  const FakeAdminData._();

  /// Temporary Merchant profile data.
  ///
  /// Current location:
  /// features/admin/data/
  ///
  /// Future migration:
  /// features/merchant/data/
  ///
  /// This will become:
  /// MerchantProfileData

  static const Admin admin = Admin(
    id: 'MER001',

    name: 'Hassan Ehsani',

    email: 'owner@educore.com',

    phone: '+93 700 000 000',

    /// Merchant role.
    role: 'Business Owner',

    /// Owned businesses:
    ///
    /// 1. School
    /// 2. ISP
    /// 3. Laboratory
    totalBusinesses: 3,

    /// Total users across businesses:
    ///
    /// School:
    /// - Students
    /// - Parents
    ///
    /// ISP:
    /// - Customers
    ///
    /// Laboratory:
    /// - Customers
    totalUsers: 1680,

    /// Empty for now.
    /// Later will contain:
    /// - Network image URL
    /// - Local asset path
    avatar: '',

    accountStatus: 'Active',

    createdAt: 'January 2026',
  );
}
