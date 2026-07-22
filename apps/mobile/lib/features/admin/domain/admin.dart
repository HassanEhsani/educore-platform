// lib/features/admin/domain/admin.dart

/// Temporary Merchant profile model.
///
/// Current location:
/// features/admin/domain/
///
/// Reason:
/// The initial feature structure was created before
/// separating Merchant and System Admin domains.
///
/// Future migration:
/// features/merchant/domain/merchant_profile.dart

class Admin {
  /// Merchant unique identifier.
  final String id;

  /// Merchant display name.
  final String name;

  /// Contact email.
  final String email;

  /// Contact phone number.
  final String phone;

  /// Merchant role.
  ///
  /// Examples:
  /// - Business Owner
  /// - School Owner
  /// - Company Manager
  final String role;

  /// Number of businesses owned by merchant.
  ///
  /// Example:
  /// School + ISP + Laboratory = 3
  final int totalBusinesses;

  /// Total users/customers across all businesses.
  ///
  /// Includes:
  /// - Students
  /// - Parents
  /// - ISP customers
  /// - Laboratory customers
  final int totalUsers;

  /// Avatar URL or local asset path.
  final String avatar;

  /// Merchant account status.
  ///
  /// Examples:
  /// - Active
  /// - Suspended
  final String accountStatus;

  /// Account creation date.
  final String createdAt;

  const Admin({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.totalBusinesses,
    required this.totalUsers,
    required this.avatar,
    required this.accountStatus,
    required this.createdAt,
  });
}
