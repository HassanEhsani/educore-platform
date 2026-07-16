import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_parent_data.dart';
import 'widgets/parent_action_card.dart';
import 'widgets/parent_child_card.dart';
import 'widgets/parent_header.dart';
import 'package:go_router/go_router.dart';

class ParentDashboardBody extends StatelessWidget {
  const ParentDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ParentHeader(parent: demoParent),

          const Gap(AppSpacing.lg),

          Row(
            children: [
              Expanded(
                child: ParentActionCard(
                  icon: Icons.grade,
                  title: 'Grades',
                  onTap: () {},
                ),
              ),
              Expanded(
                child: ParentActionCard(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  onTap: () => context.push('/notifications'),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: ParentActionCard(
                  icon: Icons.message,
                  title: 'Messages',
                  onTap: () {},
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.md),

          Row(
            children: [
              Expanded(
                child: ParentActionCard(
                  icon: Icons.payments,
                  title: 'Fees',
                  onTap: () {},
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: ParentActionCard(
                  icon: Icons.calendar_month,
                  title: 'Schedule',
                  onTap: () {},
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.xl),

          ParentChildCard(
            icon: Icons.school,
            title: 'Attendance',
            subtitle:
                'Attendance: ${demoParent.attendance.toStringAsFixed(1)}%',
            onTap: () {},
          ),

          ParentChildCard(
            icon: Icons.notifications,
            title: 'Unread Messages',
            subtitle: '${demoParent.unreadMessages} new messages',
            onTap: () {},
          ),

          ParentChildCard(
            icon: Icons.assignment,
            title: 'Homework',
            subtitle: 'Check homework status',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
