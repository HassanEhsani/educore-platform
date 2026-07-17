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

          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            children: [
              SizedBox(
                width: 160,
                child: ParentActionCard(icon: Icons.grade, title: 'Grades'),
              ),
              SizedBox(
                width: 160,
                child: ParentActionCard(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  onTap: () => context.push('/notifications'),
                ),
              ),
              SizedBox(
                width: 160,
                child: ParentActionCard(icon: Icons.message, title: 'Messages'),
              ),
              SizedBox(
                width: 160,
                child: ParentActionCard(icon: Icons.payments, title: 'Fees'),
              ),
              SizedBox(
                width: 160,
                child: ParentActionCard(
                  icon: Icons.calendar_month,
                  title: 'Schedule',
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.xl),
          Text(
            'Student Information',
            style: Theme.of(context).textTheme.titleLarge,
          ),

          const Gap(AppSpacing.md),

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
