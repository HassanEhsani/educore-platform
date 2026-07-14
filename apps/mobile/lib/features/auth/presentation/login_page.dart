import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const FlutterLogo(size: 90),

                  const Gap(AppSpacing.xl),

                  Text(
                    'EduCore',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.displayLarge,
                  ),

                  const Gap(AppSpacing.sm),

                  Text(
                    'School Management Platform',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bodyMedium,
                  ),

                  const Gap(AppSpacing.xxl),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                      ),
                    ),
                  ),

                  const Gap(AppSpacing.md),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                      ),
                    ),
                  ),

                  const Gap(AppSpacing.xl),

                  SizedBox(
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/roles');
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
