class UserModel {
  final int id;
  final String fullName;
  final String email;
  final String role;
  final String? avatar;

  const UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.role,
    this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      fullName: json['full_name'],
      email: json['email'],
      role: json['role'],
      avatar: json['avatar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'full_name': fullName,
      'email': email,
      'role': role,
      'avatar': avatar,
    };
  }
}
