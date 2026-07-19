import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class ProfileRepository {
  Future<dynamic> getProfile() async {
    final response = await ApiClient.dio.get(ApiEndpoints.profile);
    return response.data;
  }
}
