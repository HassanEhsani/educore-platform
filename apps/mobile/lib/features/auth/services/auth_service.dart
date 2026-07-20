import '../data/mock_users.dart';

class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();

  Future<MockUser?> login({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    for (final user in mockUsers) {
      if (user.email == email && user.password == password) {
        return user;
      }
    }

    return null;
  }
}
