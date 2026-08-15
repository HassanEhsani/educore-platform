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
    final parent = FakeParentData.parent;
    final summary = FakeParentData.summary;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ParentHeader(parent: parent),

          const Gap(28),

          _sectionTitle(context, 'Academic Overview'),

          const Gap(14),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _summaryCard(
                context,
                title: 'Average',
                value: summary.averageScore.toString(),
                icon: Icons.grade_outlined,
              ),
              _summaryCard(
                context,
                title: 'Attendance',
                value: '${summary.attendanceRate}%',
                icon: Icons.event_available_outlined,
              ),
              _summaryCard(
                context,
                title: 'Homework',
                value:
                    '${summary.completedAssignments}/${summary.totalAssignments}',
                icon: Icons.assignment_outlined,
              ),
              _summaryCard(
                context,
                title: 'Exams',
                value: '${summary.upcomingExams}',
                icon: Icons.quiz_outlined,
              ),
            ],
          ),

          const Gap(30),

          _sectionTitle(context, 'Quick Actions'),

          const Gap(14),

          LayoutBuilder(
            builder: (context, constraints) {
              final crossAxisCount = constraints.maxWidth > 600 ? 4 : 2;

              return GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
                childAspectRatio: 1.25,
                children: [
                  ParentActionCard(
                    icon: Icons.grade_outlined,
                    title: 'Grades',
                    onTap: () {
                      context.push('/parent/grades');
                    },
                  ),
                  ParentActionCard(
                    icon: Icons.message_outlined,
                    title: 'Messages',
                    onTap: () {
                      context.push('/parent/messages');
                    },
                  ),
                  ParentActionCard(
                    icon: Icons.payments_outlined,
                    title: 'Fees',
                    onTap: () {
                      context.push('/parent/fees');
                    },
                  ),
                  ParentActionCard(
                    icon: Icons.calendar_month_outlined,
                    title: 'Schedule',
                    onTap: () {},
                  ),
                ],
              );
            },
          ),

          const Gap(30),

          _sectionTitle(context, 'Student Information'),

          const Gap(14),

          ParentChildCard(
            icon: Icons.school_outlined,
            title: parent.studentName,
            subtitle: '${parent.studentClass} • ${parent.studentNumber}',
            onTap: () {
              context.push('/parent/children');
            },
          ),

          const Gap(12),

          ParentChildCard(
            icon: Icons.event_available_outlined,
            title: 'Attendance',
            subtitle: '${parent.attendance}% attendance rate',
            onTap: () {
              context.push('/parent/attendance');
            },
          ),

          const Gap(12),

          ParentChildCard(
            icon: Icons.notifications_outlined,
            title: 'Notifications',
            subtitle: '${parent.unreadMessages} unread messages',
            onTap: () {
              context.push('/parent/notifications');
            },
          ),

          const Gap(12),

          ParentChildCard(
            icon: Icons.account_balance_wallet_outlined,
            title: 'Pending Fees',
            subtitle: '${summary.pendingFees} payment pending',
            onTap: () {
              context.push('/parent/fees');
            },
          ),

          const Gap(30),

          _sectionTitle(context, 'Upcoming'),

          const Gap(14),

          Card(
            elevation: 0,
            child: ListTile(
              leading: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: .12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.event_note_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              title: const Text(
                'Upcoming Exams',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${summary.upcomingExams} exams scheduled'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _summaryCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: 160,
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: colorScheme.primary.withValues(alpha: .12),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(icon, color: colorScheme.primary),
              ),

              const Gap(12),

              Text(
                value,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Gap(4),

              Text(title, style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
        ),
      ),
    );
  }
}
