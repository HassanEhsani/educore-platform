import '../data/mock_users.dart';
import '../services/auth_service.dart';

class LoginController {
  final AuthService _authService = AuthService.instance;

  Future<MockUser?> login({
    required String email,
    required String password,
  }) async {
    final user = await _authService.login(email: email, password: password);

    return user;
  }
}
