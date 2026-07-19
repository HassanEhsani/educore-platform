import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class AuthRepository {
  Future<void> login({required String email, required String password}) async {
    await ApiClient.dio.post(
      ApiEndpoints.login,
      data: {'email': email, 'password': password},
    );
  }

  Future<void> logout() async {
    await ApiClient.dio.post(ApiEndpoints.logout);
  }
}
