class IspInternetPackage {
  final String id;
  final String name;
  final String description;
  final double price;
  final String currency;
  final int validityDays;
  final String downloadSpeed;
  final String uploadSpeed;
  final String? dataLimit;
  final bool isActive;

  const IspInternetPackage({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.currency,
    required this.validityDays,
    required this.downloadSpeed,
    required this.uploadSpeed,
    this.dataLimit,
    required this.isActive,
  });
}
