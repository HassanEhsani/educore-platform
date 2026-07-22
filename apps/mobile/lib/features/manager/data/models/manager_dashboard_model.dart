import '../../domain/entities/manager_dashboard.dart';

class ManagerDashboardModel extends ManagerDashboard {
  const ManagerDashboardModel({
    required super.managerName,
    required super.schoolName,
    required super.students,
    required super.teachers,
    required super.attendance,
    required super.monthlyRevenue,
    required super.growth,
  });

  factory ManagerDashboardModel.fromJson(Map<String, dynamic> json) {
    return ManagerDashboardModel(
      managerName: json['managerName'],

      schoolName: json['schoolName'],

      students: json['students'],

      teachers: json['teachers'],

      attendance: (json['attendance']).toDouble(),

      monthlyRevenue: (json['monthlyRevenue']).toDouble(),

      growth: (json['growth']).toDouble(),
    );
  }
}
