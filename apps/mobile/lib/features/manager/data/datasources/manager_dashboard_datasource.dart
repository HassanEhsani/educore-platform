import '../models/manager_dashboard_model.dart';

class ManagerDashboardDataSource {
  Future<ManagerDashboardModel> getDashboard() async {
    await Future.delayed(const Duration(milliseconds: 800));

    return const ManagerDashboardModel(
      managerName: 'Hassan Ehsani',

      schoolName: 'EduCore International School',

      students: 1250,

      teachers: 42,

      attendance: 97.3,

      monthlyRevenue: 37700,

      growth: 12.0,
    );
  }
}
