import '../../domain/entities/manager_dashboard.dart';
import '../../domain/repositories/manager_repository.dart';

import '../datasources/manager_dashboard_datasource.dart';

class ManagerRepositoryImpl implements ManagerRepository {
  final ManagerDashboardDataSource datasource;

  ManagerRepositoryImpl({required this.datasource});

  @override
  Future<ManagerDashboard> getDashboard() {
    return datasource.getDashboard();
  }
}
