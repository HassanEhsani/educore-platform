import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';

class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose your role')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Welcome to EduCore', style: AppTextStyles.headlineMedium),
            const Gap(AppSpacing.lg),

            _roleButton(
              context: context,
              title: 'Student',
              icon: Icons.school,
              route: '/student',
            ),

            const Gap(AppSpacing.md),

            _roleButton(
              context: context,
              title: 'Parent',
              icon: Icons.family_restroom,
              route: '/parent',
            ),

            const Gap(AppSpacing.md),

            _roleButton(
              context: context,
              title: 'Teacher',
              icon: Icons.menu_book,
              route: '/teacher',
            ),

            const Gap(AppSpacing.md),

            _roleButton(
              context: context,
              title: 'Administrator',
              icon: Icons.admin_panel_settings,
              route: '/manager',
            ),
          ],
        ),
      ),
    );
  }

  Widget _roleButton({
    required BuildContext context,
    required String title,
    required IconData icon,
    required String route,
  }) {
    return SizedBox(
      height: 60,
      child: ElevatedButton.icon(
        onPressed: () => context.go(route),
        icon: Icon(icon),
        label: Text(title),
      ),
    );
  }
}
