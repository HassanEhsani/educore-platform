import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../domain/user_role.dart';
import 'divider_text.dart';
import 'email_text_field.dart';
import 'forgot_password_button.dart';
import 'loading_overlay.dart';
import 'login_button.dart';
import 'password_text_field.dart';
import 'remember_me_checkbox.dart';
import 'social_login_section.dart';
import '../services/auth_service.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthService _authService = AuthService.instance;

  bool _rememberMe = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    final user = await _authService.login(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });

    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid email or password')),
      );
      return;
    }

    switch (user.role) {
      case UserRole.manager:
        context.go('/manager');
        break;

      case UserRole.teacher:
        context.go('/teacher');
        break;

      case UserRole.student:
        context.go('/student');
        break;

      case UserRole.parent:
        context.go('/parent');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      loading: _isLoading,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            EmailTextField(controller: _emailController),

            const SizedBox(height: 16),

            PasswordTextField(controller: _passwordController),

            const SizedBox(height: 12),

            RememberMeCheckbox(
              value: _rememberMe,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value ?? false;
                });
              },
            ),

            const SizedBox(height: 12),

            ForgotPasswordButton(onPressed: () {}),

            const SizedBox(height: 24),

            LoginButton(onPressed: _login),

            const SizedBox(height: 24),

            const DividerText(text: 'OR'),

            const SizedBox(height: 20),

            SocialLoginSection(onGooglePressed: () {}, onApplePressed: () {}),
          ],
        ),
      ),
    );
  }
}
