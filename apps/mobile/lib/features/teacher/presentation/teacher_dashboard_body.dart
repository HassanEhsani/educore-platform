import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_teacher_data.dart';
import 'widgets/teacher_action_card.dart';
import 'widgets/teacher_class_card.dart';
import 'widgets/teacher_header.dart';
import 'package:go_router/go_router.dart';

class TeacherDashboardBody extends StatelessWidget {
  const TeacherDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TeacherHeader(teacher: demoTeacher),
          Text('Quick Actions', style: Theme.of(context).textTheme.titleLarge),

          const Gap(AppSpacing.md),

          const Gap(AppSpacing.lg),

          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            children: [
              SizedBox(
                width: 160,
                child: TeacherActionCard(icon: Icons.people, title: 'Students'),
              ),
              SizedBox(
                width: 160,
                child: TeacherActionCard(
                  icon: Icons.assignment,
                  title: 'Assignments',
                ),
              ),
              SizedBox(
                width: 160,
                child: TeacherActionCard(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  onTap: () => context.push('/notifications'),
                ),
              ),
              SizedBox(
                width: 160,
                child: TeacherActionCard(
                  icon: Icons.schedule,
                  title: 'Schedule',
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.xl),
          Text('Teaching', style: Theme.of(context).textTheme.titleLarge),

          const Gap(AppSpacing.md),

          TeacherClassCard(
            icon: Icons.class_,
            title: 'Today\'s Schedule',
            subtitle: 'View all classes',
            onTap: () {},
          ),

          TeacherClassCard(
            icon: Icons.fact_check,
            title: 'Attendance',
            subtitle: 'Take attendance',
            onTap: () {},
          ),

          TeacherClassCard(
            icon: Icons.quiz,
            title: 'Exams',
            subtitle: 'Manage exams and grades',
            onTap: () {},
          ),

          TeacherClassCard(
            icon: Icons.message,
            title: 'Messages',
            subtitle: 'Parent communication',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
