class Admin {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String role;

  final int totalBusinesses;
  final int totalUsers;

  final String avatar;
  final String accountStatus;
  final String lastLogin;
  final String createdAt;

  final List<String> permissions;

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
    required this.lastLogin,
    required this.createdAt,
    required this.permissions,
  });
}
