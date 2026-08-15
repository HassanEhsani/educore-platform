enum IspSubscriptionStatus { active, expired, suspended, cancelled }

class IspSubscription {
  final String id;
  final String customerId;
  final String packageId;
  final DateTime startDate;
  final DateTime expiryDate;
  final IspSubscriptionStatus status;
  final bool autoRenew;

  const IspSubscription({
    required this.id,
    required this.customerId,
    required this.packageId,
    required this.startDate,
    required this.expiryDate,
    required this.status,
    required this.autoRenew,
  });

  bool get isActive => status == IspSubscriptionStatus.active;
}
