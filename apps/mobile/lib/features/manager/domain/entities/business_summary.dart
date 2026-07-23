enum BusinessType { school, isp, laboratory }

class BusinessSummary {
  final String id;

  final String name;

  final BusinessType type;

  final double monthlyRevenue;

  final int customers;

  final String status;

  const BusinessSummary({
    required this.id,
    required this.name,
    required this.type,
    required this.monthlyRevenue,
    required this.customers,
    required this.status,
  });
}
