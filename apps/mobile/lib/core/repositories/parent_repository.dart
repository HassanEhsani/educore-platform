import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class ParentRepository {
  Future<dynamic> getParents() async {
    final response = await ApiClient.dio.get(ApiEndpoints.parents);
    return response.data;
  }
}
