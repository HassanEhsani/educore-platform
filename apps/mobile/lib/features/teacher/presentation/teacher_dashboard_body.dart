import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_teacher_data.dart';
import 'widgets/teacher_action_card.dart';
import 'widgets/teacher_class_card.dart';
import 'widgets/teacher_header.dart';

class TeacherDashboardBody extends StatelessWidget {
  const TeacherDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => context.push('/profile'),
            child: const TeacherHeader(teacher: demoTeacher),
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
                child: TeacherActionCard(
                  icon: Icons.people,
                  title: 'Students',
                  onTap: () => context.push('/profile'),
                ),
              ),
              SizedBox(
                width: 160,
                child: TeacherActionCard(
                  icon: Icons.assignment,
                  title: 'Assignments',
                  onTap: () => context.push('/documents'),
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
                  onTap: () => context.push('/calendar'),
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.xl),

          Text('Teaching', style: Theme.of(context).textTheme.titleLarge),

          const Gap(AppSpacing.md),

          TeacherClassCard(
            icon: Icons.class_,
            title: "Today's Schedule",
            subtitle: 'View all classes',
            onTap: () => context.push('/calendar'),
          ),

          TeacherClassCard(
            icon: Icons.fact_check,
            title: 'Attendance',
            subtitle: 'Take attendance',
            onTap: () => context.push('/attendance'),
          ),

          TeacherClassCard(
            icon: Icons.quiz,
            title: 'Exams',
            subtitle: 'Manage exams and grades',
            onTap: () => context.push('/documents'),
          ),

          TeacherClassCard(
            icon: Icons.message,
            title: 'Messages',
            subtitle: 'Parent communication',
            onTap: () => context.push('/messages'),
          ),
        ],
      ),
    );
  }
}
