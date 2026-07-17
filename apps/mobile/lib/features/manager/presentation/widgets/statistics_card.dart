import 'package:flutter/material.dart';

import '../../../../core/widgets/dashboard/dashboard_info_card.dart';

class StatisticsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const StatisticsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardInfoCard(icon: icon, title: title, subtitle: value);
  }
}
