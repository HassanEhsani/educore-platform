class ChildFee {
  final String title;
  final double amount;
  final double paidAmount;
  final DateTime dueDate;
  final String status;

  const ChildFee({
    required this.title,
    required this.amount,
    required this.paidAmount,
    required this.dueDate,
    required this.status,
  });

  double get remainingAmount => amount - paidAmount;
}
