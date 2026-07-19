import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class CalendarRepository {
  Future<dynamic> getEvents() async {
    final response = await ApiClient.dio.get(ApiEndpoints.calendar);
    return response.data;
  }
}
