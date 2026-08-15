enum IspPaymentStatus { pending, paid, failed, cancelled }

enum IspPaymentMethod { cash, mobileMoney, bankTransfer, online }

class IspPayment {
  final String id;
  final String customerId;
  final String? subscriptionId;
  final double amount;
  final String currency;
  final IspPaymentStatus status;
  final IspPaymentMethod method;
  final DateTime createdAt;
  final String? referenceNumber;

  const IspPayment({
    required this.id,
    required this.customerId,
    this.subscriptionId,
    required this.amount,
    required this.currency,
    required this.status,
    required this.method,
    required this.createdAt,
    this.referenceNumber,
  });

  bool get isSuccessful => status == IspPaymentStatus.paid;
}
