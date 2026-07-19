import '../network/api_client.dart';
import '../network/api_endpoints.dart';

class StudentRepository {
  Future<dynamic> getStudents() async {
    final response = await ApiClient.dio.get(ApiEndpoints.students);
    return response.data;
  }
}
