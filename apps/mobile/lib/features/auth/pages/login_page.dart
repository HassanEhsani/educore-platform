import 'package:flutter/material.dart';

import '../widgets/login_form.dart';
import '../widgets/login_form_wrapper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  const LoginFormWrapper(),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: const LoginForm(),
            ),
          ),
        ),
      ),
    );
  }
}
