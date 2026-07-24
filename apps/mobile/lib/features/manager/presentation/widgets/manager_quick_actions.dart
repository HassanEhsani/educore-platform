import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'quick_action_card.dart';

class ManagerQuickActions extends StatelessWidget {
  const ManagerQuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,

      physics: const NeverScrollableScrollPhysics(),

      crossAxisCount: 2,

      crossAxisSpacing: 12,

      mainAxisSpacing: 12,

      children: [
        QuickActionCard(
          icon: Icons.person_add_alt_1_outlined,
          title: 'Add Student',
          onTap: () {
            context.push('/manager/students');
          },
        ),

        QuickActionCard(
          icon: Icons.fact_check_outlined,
          title: 'Attendance',
          onTap: () {
            context.push('/manager/attendance');
          },
        ),

        QuickActionCard(
          icon: Icons.grade_outlined,
          title: 'Grades',
          onTap: () {
            context.push('/manager/grades');
          },
        ),

        QuickActionCard(
          icon: Icons.campaign_outlined,
          title: 'Announcements',
          onTap: () {
            context.push('/manager/announcements');
          },
        ),

        QuickActionCard(
          icon: Icons.settings_outlined,
          title: 'Settings',
          onTap: () {
            context.push('/manager/settings');
          },
        ),
      ],
    );
  }
}
