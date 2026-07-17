import 'package:flutter/material.dart';

import '../../../../core/widgets/dashboard/dashboard_action_card.dart';

class ManagerActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const ManagerActionCard({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardActionCard(icon: icon, title: title, onTap: onTap);
  }
}
