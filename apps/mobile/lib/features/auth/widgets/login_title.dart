import 'package:flutter/material.dart';

/// عنوان اصلی صفحه ورود
/// شامل نام محصول و توضیح کوتاه سیستم
class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        // نام اپلیکیشن
        Text(
          'EduCore',
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
          ),
        ),

        const SizedBox(height: 6),

        // توضیح کوتاه زیر عنوان
        Text(
          'Education Management Platform',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
