class RevenueSummary {
  final double schoolRevenue;
  final double ispRevenue;
  final double laboratoryRevenue;

  const RevenueSummary({
    required this.schoolRevenue,
    required this.ispRevenue,
    required this.laboratoryRevenue,
  });

  double get totalRevenue => schoolRevenue + ispRevenue + laboratoryRevenue;
}
