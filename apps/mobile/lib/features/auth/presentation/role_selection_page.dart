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

            // Merchant / Business Owner
            _roleButton(
              context,
              title: 'Merchant',
              icon: Icons.business_center_outlined,
              route: '/admin',
            ),

            const Gap(AppSpacing.md),

            // School Manager
            _roleButton(
              context,
              title: 'School Manager',
              icon: Icons.manage_accounts_outlined,
              route: '/manager',
            ),

            const Gap(AppSpacing.md),

            // Teacher
            _roleButton(
              context,
              title: 'Teacher',
              icon: Icons.menu_book_outlined,
              route: '/teacher',
            ),

            const Gap(AppSpacing.md),

            // Student
            _roleButton(
              context,
              title: 'Student',
              icon: Icons.school_outlined,
              route: '/student',
            ),

            const Gap(AppSpacing.md),

            // Parent
            _roleButton(
              context,
              title: 'Parent',
              icon: Icons.family_restroom_outlined,
              route: '/parent',
            ),
          ],
        ),
      ),
    );
  }

  Widget _roleButton(
    BuildContext context, {
    required String title,
    required IconData icon,
    required String route,
  }) {
    return SizedBox(
      height: 60,

      child: ElevatedButton.icon(
        onPressed: () {
          context.go(route);
        },

        icon: Icon(icon),

        label: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
