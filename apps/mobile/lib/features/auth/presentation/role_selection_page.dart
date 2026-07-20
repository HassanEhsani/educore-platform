import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../services/auth_service.dart';

class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = AuthService.instance.currentUser;

    return Scaffold(
      appBar: AppBar(title: const Text('Choose your role')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Welcome to EduCore', style: AppTextStyles.headlineMedium),

            const Gap(AppSpacing.lg),

            if (user != null) ...[
              Text('Logged in as: ${user.email}'),

              const Gap(AppSpacing.lg),
            ],

            _roleButton(context, 'Student', Icons.school, '/student'),

            const Gap(AppSpacing.md),

            _roleButton(context, 'Parent', Icons.family_restroom, '/parent'),

            const Gap(AppSpacing.md),

            _roleButton(context, 'Teacher', Icons.menu_book, '/teacher'),

            const Gap(AppSpacing.md),

            _roleButton(
              context,
              'Administrator',
              Icons.admin_panel_settings,
              '/admin',
            ),
          ],
        ),
      ),
    );
  }

  Widget _roleButton(
    BuildContext context,
    String title,
    IconData icon,
    String route,
  ) {
    return SizedBox(
      height: 60,
      child: ElevatedButton.icon(
        onPressed: () {
          context.go(route);
        },
        icon: Icon(icon),
        label: Text(title),
      ),
    );
  }
}
