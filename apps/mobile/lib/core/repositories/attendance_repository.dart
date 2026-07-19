import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class AttendanceRepository {
  Future<dynamic> getAttendance() async {
    final response = await ApiClient.dio.get(ApiEndpoints.attendance);
    return response.data;
  }
}
