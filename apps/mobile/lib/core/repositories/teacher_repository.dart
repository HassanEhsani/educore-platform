import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class TeacherRepository {
  Future<dynamic> getTeachers() async {
    final response = await ApiClient.dio.get(ApiEndpoints.teachers);
    return response.data;
  }
}
