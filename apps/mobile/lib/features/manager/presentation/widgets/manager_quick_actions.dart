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
          icon: Icons.person_add,
          title: 'Add Student',
          onTap: () => context.push('/documents'),
        ),

        QuickActionCard(
          icon: Icons.group_add,
          title: 'Add Teacher',
          onTap: () => context.push('/documents'),
        ),

        QuickActionCard(
          icon: Icons.payment,
          title: 'Payments',
          onTap: () => context.push('/documents'),
        ),

        QuickActionCard(
          icon: Icons.analytics,
          title: 'Reports',
          onTap: () => context.push('/documents'),
        ),
      ],
    );
  }
}
