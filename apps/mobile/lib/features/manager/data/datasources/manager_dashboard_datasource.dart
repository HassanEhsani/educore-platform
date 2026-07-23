import 'package:flutter/material.dart';

import '../../domain/entities/dashboard_alert.dart';
import '../../domain/entities/dashboard_notification.dart';
import '../../domain/entities/recent_activity.dart';

import '../models/manager_dashboard_model.dart';

class ManagerDashboardDataSource {
  Future<ManagerDashboardModel> getDashboard() async {
    await Future.delayed(const Duration(milliseconds: 800));

    return ManagerDashboardModel(
      managerName: 'Hassan Ehsani',

      schoolName: 'EduCore International School',

      students: 1250,

      teachers: 42,

      classes: 36,

      attendance: 97.3,

      monthlyRevenue: 37700,

      monthlyExpenses: 12500,

      netProfit: 25200,

      pendingPayments: 84,

      todayAttendance: 1218,

      growth: 12.0,

      alerts: [
        const DashboardAlert(
          title: 'Pending Payments',
          message: '84 student payments are still pending.',
          type: AlertType.warning,
          icon: Icons.payment_outlined,
        ),
        const DashboardAlert(
          title: 'Attendance Status',
          message: 'School attendance is above target.',
          type: AlertType.success,
          icon: Icons.check_circle_outline,
        ),
      ],

      notifications: [
        DashboardNotification(
          id: 'notification_001',
          title: 'New Teacher Added',
          message: 'A new teacher profile was created.',
          type: NotificationType.academic,
          createdAt: DateTime.now(),
          isRead: false,
        ),
      ],

      activities: [
        RecentActivity(
          id: 'activity_001',
          title: 'Grades Updated',
          description: 'Teachers uploaded new student grades.',
          type: ActivityType.report,
          createdAt: DateTime.now(),
        ),
        RecentActivity(
          id: 'activity_002',
          title: 'Payment Received',
          description: 'Student tuition payment recorded.',
          type: ActivityType.payment,
          createdAt: DateTime.now(),
        ),
      ],
    );
  }
}
