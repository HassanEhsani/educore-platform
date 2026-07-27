import 'package:flutter/material.dart';

import '../widgets/auth_background.dart';
import '../widgets/login_form_wrapper.dart';
import '../widgets/auth_branding.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 420),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [AuthBranding(), LoginFormWrapper()],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
