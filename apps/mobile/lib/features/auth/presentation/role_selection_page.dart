import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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

            _roleButton(title: 'Student', icon: Icons.school),

            const Gap(AppSpacing.md),

            _roleButton(title: 'Parent', icon: Icons.family_restroom),

            const Gap(AppSpacing.md),

            _roleButton(title: 'Teacher', icon: Icons.menu_book),

            const Gap(AppSpacing.md),

            _roleButton(
              title: 'Administrator',
              icon: Icons.admin_panel_settings,
            ),
          ],
        ),
      ),
    );
  }

  Widget _roleButton({required String title, required IconData icon}) {
    return SizedBox(
      height: 60,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(title),
      ),
    );
  }
}
