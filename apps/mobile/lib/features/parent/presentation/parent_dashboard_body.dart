import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_parent_data.dart';
import 'widgets/parent_action_card.dart';
import 'widgets/parent_child_card.dart';
import 'widgets/parent_header.dart';

class ParentDashboardBody extends StatelessWidget {
  const ParentDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => context.push('/profile'),
            child: ParentHeader(parent: FakeParentData.parent),
          ),

          const Gap(AppSpacing.lg),

          Text('Quick Actions', style: Theme.of(context).textTheme.titleLarge),

          const Gap(AppSpacing.md),

          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            children: [
              SizedBox(
                width: 160,
                child: ParentActionCard(
                  icon: Icons.grade,
                  title: 'Grades',
                  onTap: () => context.push('/documents'),
                ),
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
                child: ParentActionCard(
                  icon: Icons.message,
                  title: 'Messages',
                  onTap: () => context.push('/messages'),
                ),
              ),
              SizedBox(
                width: 160,
                child: ParentActionCard(
                  icon: Icons.payments,
                  title: 'Fees',
                  onTap: () => context.push('/documents'),
                ),
              ),
              SizedBox(
                width: 160,
                child: ParentActionCard(
                  icon: Icons.calendar_month,
                  title: 'Schedule',
                  onTap: () => context.push('/calendar'),
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
                'Attendance: ${FakeParentData.parent.attendance.toStringAsFixed(1)}%',
            onTap: () => context.push('/attendance'),
          ),

          ParentChildCard(
            icon: Icons.notifications,
            title: 'Unread Messages',
            subtitle: '${FakeParentData.parent.unreadMessages} new messages',
            onTap: () => context.push('/messages'),
          ),

          ParentChildCard(
            icon: Icons.assignment,
            title: 'Homework',
            subtitle: 'Check homework status',
            onTap: () => context.push('/documents'),
          ),
        ],
      ),
    );
  }
}
