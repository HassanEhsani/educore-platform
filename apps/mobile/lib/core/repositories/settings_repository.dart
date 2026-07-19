import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class SettingsRepository {
  Future<dynamic> getSettings() async {
    final response = await ApiClient.dio.get(ApiEndpoints.settings);
    return response.data;
  }
}
