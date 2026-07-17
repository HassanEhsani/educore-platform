import '../../../../core/widgets/dashboard/dashboard_header.dart';
import '../../domain/manager.dart';
import 'package:flutter/material.dart';

class ManagerHeader extends StatelessWidget {
  final Manager manager;

  const ManagerHeader({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    return DashboardHeader(
      name: manager.name,
      subtitle: manager.schoolName,
      description: 'School Manager',
      icon: Icons.admin_panel_settings,
    );
  }
}
