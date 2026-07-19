import '../models/login_request.dart';
import '../models/login_response.dart';

class LoginRepository {
  Future<LoginResponse> login(LoginRequest request) async {
    await Future.delayed(const Duration(milliseconds: 700));

    return const LoginResponse(
      accessToken: 'demo_access_token',
      refreshToken: 'demo_refresh_token',
    );
  }
}
