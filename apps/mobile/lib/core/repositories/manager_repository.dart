import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class ManagerRepository {
  Future<dynamic> getManagers() async {
    final response = await ApiClient.dio.get(ApiEndpoints.managers);
    return response.data;
  }
}
