import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class NotificationRepository {
  Future<dynamic> getNotifications() async {
    final response = await ApiClient.dio.get(ApiEndpoints.notifications);
    return response.data;
  }
}
