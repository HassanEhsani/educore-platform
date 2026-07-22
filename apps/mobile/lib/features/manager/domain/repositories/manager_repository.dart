import '../entities/manager_dashboard.dart';

abstract class ManagerRepository {
  Future<ManagerDashboard> getDashboard();
}
