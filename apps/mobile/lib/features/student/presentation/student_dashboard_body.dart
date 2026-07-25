import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_student_data.dart';
import 'widgets/dashboard_card.dart';
import 'widgets/quick_action_card.dart';
import 'widgets/student_header.dart';

class StudentDashboardBody extends StatelessWidget {
  const StudentDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          _buildHeader(context),

          const Gap(AppSpacing.xl),

          _buildQuickActions(context),

          const Gap(AppSpacing.xl),

          _buildAcademicSection(context),

          const Gap(AppSpacing.xl),

          _buildLearningSection(context),

          const Gap(AppSpacing.xl),

          _buildActivitySection(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/student/profile');
      },

      child: StudentHeader(student: FakeStudentData.student),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('Quick Actions', style: Theme.of(context).textTheme.titleLarge),

        const Gap(AppSpacing.md),

        Wrap(
          spacing: AppSpacing.md,

          runSpacing: AppSpacing.md,

          children: [
            _actionCard(
              context,
              icon: Icons.grade_rounded,
              title: 'Grades',
              route: '/student/grades',
            ),

            _actionCard(
              context,
              icon: Icons.calendar_month_rounded,
              title: 'Schedule',
              route: '/student/schedule',
            ),

            _actionCard(
              context,
              icon: Icons.notifications_rounded,
              title: 'Notifications',
              route: '/student/notifications',
            ),

            _actionCard(
              context,
              icon: Icons.payments_rounded,
              title: 'Payments',
              route: '/student/settings',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAcademicSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('Academic', style: Theme.of(context).textTheme.titleLarge),

        const Gap(AppSpacing.md),

        SizedBox(
          width: double.infinity,

          child: QuickActionCard(
            icon: Icons.analytics_rounded,

            title: 'Academic Progress',

            onTap: () {
              context.push('/student/academic-progress');
            },
          ),
        ),
      ],
    );
  }

  Widget _actionCard(
    BuildContext context, {

    required IconData icon,

    required String title,

    required String route,
  }) {
    return SizedBox(
      width: 160,

      child: QuickActionCard(
        icon: icon,

        title: title,

        onTap: () {
          context.push(route);
        },
      ),
    );
  }

  Widget _buildLearningSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('Learning', style: Theme.of(context).textTheme.titleLarge),

        const Gap(AppSpacing.md),

        DashboardCard(
          icon: Icons.menu_book_rounded,

          title: 'Learning Materials',

          subtitle: 'Books, homework and resources',

          onTap: () {
            context.push('/student/grades');
          },
        ),

        DashboardCard(
          icon: Icons.fact_check_rounded,

          title: 'Attendance',

          subtitle: 'View attendance history',

          onTap: () {
            context.push('/student/attendance');
          },
        ),

        DashboardCard(
          icon: Icons.campaign_rounded,

          title: 'Announcements',

          subtitle: 'Latest school news',

          onTap: () {
            context.push('/student/announcements');
          },
        ),
      ],
    );
  }

  Widget _buildActivitySection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('Recent Activity', style: Theme.of(context).textTheme.titleLarge),

        const Gap(AppSpacing.md),

        Card(
          child: Column(
            children: const [
              ListTile(
                leading: Icon(Icons.check_circle_outline),

                title: Text('Math grade uploaded'),

                subtitle: Text('Today'),
              ),

              ListTile(
                leading: Icon(Icons.assignment_turned_in_outlined),

                title: Text('Homework submitted'),

                subtitle: Text('Yesterday'),
              ),

              ListTile(
                leading: Icon(Icons.campaign_outlined),

                title: Text('New announcement received'),

                subtitle: Text('2 days ago'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
