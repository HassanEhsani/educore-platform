import '../domain/user_role.dart';

class MockUser {
  final String email;
  final String password;
  final UserRole role;

  const MockUser({
    required this.email,
    required this.password,
    required this.role,
  });
}

const mockUsers = [
  MockUser(
    email: 'admin@educore.com',
    password: '123456',
    role: UserRole.manager,
  ),

  MockUser(
    email: 'teacher@educore.com',
    password: '123456',
    role: UserRole.teacher,
  ),

  MockUser(
    email: 'student@educore.com',
    password: '123456',
    role: UserRole.student,
  ),

  MockUser(
    email: 'parent@educore.com',
    password: '123456',
    role: UserRole.parent,
  ),
];
