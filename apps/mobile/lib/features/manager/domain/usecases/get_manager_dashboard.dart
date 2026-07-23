import '../entities/manager_dashboard.dart';
import '../repositories/manager_repository.dart';

class GetManagerDashboard {
  final ManagerRepository repository;

  const GetManagerDashboard({required this.repository});

  Future<ManagerDashboard> call() {
    return repository.getDashboard();
  }
}
