import 'package:flutter/material.dart';

class SocialLoginSection extends StatelessWidget {
  final VoidCallback? onGooglePressed;
  final VoidCallback? onApplePressed;

  const SocialLoginSection({
    super.key,
    this.onGooglePressed,
    this.onApplePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(child: Divider()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text('OR', style: TextStyle(color: Colors.grey)),
            ),
            Expanded(child: Divider()),
          ],
        ),

        const SizedBox(height: 20),

        OutlinedButton.icon(
          onPressed: onGooglePressed,
          icon: const Icon(Icons.g_mobiledata),
          label: const Text('Continue with Google'),
        ),

        const SizedBox(height: 12),

        OutlinedButton.icon(
          onPressed: onApplePressed,
          icon: const Icon(Icons.apple),
          label: const Text('Continue with Apple'),
        ),
      ],
    );
  }
}
