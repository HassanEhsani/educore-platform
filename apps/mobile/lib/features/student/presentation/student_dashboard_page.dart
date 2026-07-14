import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';

class StudentDashboardPage extends StatelessWidget {
  const StudentDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Hassan', style: AppTextStyles.headlineMedium),
            const Gap(AppSpacing.lg),

            _card(Icons.grade, 'Grades', 'View all exam results'),

            const Gap(AppSpacing.md),

            _card(Icons.calendar_month, 'Class Schedule', 'Today\'s classes'),

            const Gap(AppSpacing.md),

            _card(Icons.notifications, 'Announcements', 'Latest school news'),

            const Gap(AppSpacing.md),

            _card(
              Icons.menu_book,
              'Learning Materials',
              'Books & Presentations',
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(IconData icon, String title, String subtitle) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
