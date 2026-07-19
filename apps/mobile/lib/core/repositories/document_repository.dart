import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class DocumentRepository {
  Future<dynamic> getDocuments() async {
    final response = await ApiClient.dio.get(ApiEndpoints.documents);
    return response.data;
  }
}
