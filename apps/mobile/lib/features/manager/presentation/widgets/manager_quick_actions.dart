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
            // TODO: Create student management route
          },
        ),

        QuickActionCard(
          icon: Icons.fact_check_outlined,

          title: 'Attendance',

          onTap: () {
            // TODO: Create attendance management route
          },
        ),

        QuickActionCard(
          icon: Icons.grade_outlined,

          title: 'Grades',

          onTap: () {
            // TODO: Create grade management route
          },
        ),

        QuickActionCard(
          icon: Icons.campaign_outlined,

          title: 'Announcements',

          onTap: () {
            // TODO: Create announcement route
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
