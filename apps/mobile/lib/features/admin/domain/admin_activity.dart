// lib/features/admin/domain/admin_activity.dart

/// Temporary activity model for Merchant Dashboard.
///
/// Current location:
/// features/admin/domain/
///
/// Reason:
/// The initial architecture was created before
/// separating Merchant and System Admin domains.
///
/// Future migration:
/// features/merchant/domain/merchant_activity.dart

enum ActivityType { payment, education, business, report, user }

class AdminActivity {
  /// Activity title displayed in dashboard.
  final String title;

  /// Short activity description.
  final String description;

  /// Activity category.
  final ActivityType type;

  /// Human readable time.
  ///
  /// Examples:
  /// Today
  /// Yesterday
  /// 2 days ago
  final String time;

  const AdminActivity({
    required this.title,
    required this.description,
    required this.type,
    required this.time,
  });
}
