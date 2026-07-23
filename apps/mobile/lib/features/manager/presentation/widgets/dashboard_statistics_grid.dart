import 'package:flutter/material.dart';

import 'statistics_card.dart';

class DashboardStatisticsGrid extends StatelessWidget {
  final int students;
  final int teachers;
  final int classes;
  final double attendance;
  final int pendingPayments;
  final double netProfit;

  const DashboardStatisticsGrid({
    super.key,
    required this.students,
    required this.teachers,
    required this.classes,
    required this.attendance,
    required this.pendingPayments,
    required this.netProfit,
  });

  @override
  Widget build(BuildContext context) {
    final statistics = [
      _StatisticItem(
        icon: Icons.people_outline,
        title: 'Students',
        value: students.toString(),
      ),

      _StatisticItem(
        icon: Icons.school_outlined,
        title: 'Teachers',
        value: teachers.toString(),
      ),

      _StatisticItem(
        icon: Icons.class_outlined,
        title: 'Classes',
        value: classes.toString(),
      ),

      _StatisticItem(
        icon: Icons.fact_check_outlined,
        title: 'Attendance',
        value: '${attendance.toStringAsFixed(1)}%',
      ),

      _StatisticItem(
        icon: Icons.warning_amber_outlined,
        title: 'Pending Payments',
        value: pendingPayments.toString(),
      ),

      _StatisticItem(
        icon: Icons.account_balance_wallet_outlined,
        title: 'Profit',
        value: netProfit.toStringAsFixed(0),
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;

        return GridView.builder(
          shrinkWrap: true,

          physics: const NeverScrollableScrollPhysics(),

          itemCount: statistics.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,

            crossAxisSpacing: 12,

            mainAxisSpacing: 12,

            childAspectRatio: 1.8,
          ),

          itemBuilder: (context, index) {
            final item = statistics[index];

            return StatisticsCard(
              icon: item.icon,

              title: item.title,

              value: item.value,
            );
          },
        );
      },
    );
  }
}

class _StatisticItem {
  final IconData icon;

  final String title;

  final String value;

  const _StatisticItem({
    required this.icon,
    required this.title,
    required this.value,
  });
}
