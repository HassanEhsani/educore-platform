import '../models/manager_dashboard_model.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/dashboard_alert.dart';

class ManagerDashboardDataSource {
  Future<ManagerDashboardModel> getDashboard() async {
    await Future.delayed(const Duration(milliseconds: 800));

    return const ManagerDashboardModel(
      managerName: 'Hassan Ehsani',
      schoolName: 'EduCore International School',

      students: 1250,
      teachers: 42,
      classes: 36,

      attendance: 97.3,

      monthlyRevenue: 37700,
      monthlyExpenses: 8500,
      netProfit: 29200,

      growth: 12.0,

      pendingPayments: 84,
      todayAttendance: 1218,

      alerts: [
        DashboardAlert(
          title: 'Pending Payments',
          message: '84 students have unpaid fees',
          type: AlertType.warning,
          icon: Icons.warning,
        ),

        DashboardAlert(
          title: 'Attendance',
          message: 'Attendance improved this month',
          type: AlertType.success,
          icon: Icons.check_circle,
        ),
      ],
    );
  }
}
