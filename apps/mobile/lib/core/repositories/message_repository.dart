import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class MessageRepository {
  Future<dynamic> getMessages() async {
    final response = await ApiClient.dio.get(ApiEndpoints.messages);
    return response.data;
  }
}
