import '../domain/revenue_summary.dart';

class RevenueData {
  const RevenueData._();

  static const RevenueSummary monthly = RevenueSummary(
    tuitionCollection: 25000,
    pendingPayments: 8400,
    monthlyCollection: 33400,
  );
}
