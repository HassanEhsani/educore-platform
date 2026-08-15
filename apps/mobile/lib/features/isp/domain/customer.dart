class IspCustomer {
  final String id;
  final String fullName;
  final String phoneNumber;
  final String username;
  final String? address;
  final String? email;
  final String? customerCode;
  final bool isActive;

  const IspCustomer({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.username,
    this.address,
    this.email,
    this.customerCode,
    required this.isActive,
  });
}
