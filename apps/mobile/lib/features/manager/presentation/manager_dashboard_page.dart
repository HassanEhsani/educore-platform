// lib/features/manager/presentation/manager_dashboard_page.dart

import 'package:flutter/material.dart';

import '../../../../core/widgets/app_shell.dart';
import 'manager_dashboard_body.dart';

class ManagerDashboardPage extends StatelessWidget {
  const ManagerDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Manager Dashboard',
      currentIndex: 0,
      onTap: (_) {},
      body: const ManagerDashboardBody(),
    );
  }
}
