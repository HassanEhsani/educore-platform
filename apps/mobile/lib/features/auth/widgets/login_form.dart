import 'package:flutter/material.dart';

import 'divider_text.dart';
import 'email_text_field.dart';
import 'forgot_password_button.dart';
import 'loading_overlay.dart';
import 'login_button.dart';
import 'password_text_field.dart';
import 'remember_me_checkbox.dart';
import 'social_login_section.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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

    await Future.delayed(const Duration(seconds: 1));

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });
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
