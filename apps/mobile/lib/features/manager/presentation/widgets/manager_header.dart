// lib/features/manager/presentation/widgets/manager_header.dart

import 'package:flutter/material.dart';

import '../../../../core/widgets/dashboard/dashboard_header.dart';
import '../../domain/manager.dart';

class ManagerHeader extends StatelessWidget {
  final Manager manager;

  const ManagerHeader({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    return DashboardHeader(
      name: 'Good Morning, ${manager.name} 👋',
      subtitle: manager.schoolName,
      description: 'Business Manager • Active Today',
      icon: Icons.business_center,
    );
  }
}
