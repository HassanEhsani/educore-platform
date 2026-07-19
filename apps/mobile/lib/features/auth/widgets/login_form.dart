import 'package:flutter/material.dart';
import 'social_login_section.dart';
import 'email_text_field.dart';
import 'forgot_password_button.dart';
import 'login_button.dart';
import 'login_footer.dart';
import 'login_header.dart';
import 'logo_section.dart';
import 'password_text_field.dart';
import 'remember_me_checkbox.dart';
import 'language_selector.dart';
import 'version_label.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String language = 'en';
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool rememberMe = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (_formKey.currentState!.validate()) {
      debugPrint('Login Success');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const LogoSection(),

          const SizedBox(height: 32),

          const LoginHeader(),
          const SizedBox(height: 20),

          LanguageSelector(
            value: language,
            onChanged: (value) {
              setState(() {
                language = value ?? 'en';
              });
            },
          ),

          const SizedBox(height: 24),

          const SizedBox(height: 32),

          EmailTextField(controller: emailController),

          const SizedBox(height: 16),

          PasswordTextField(controller: passwordController),

          RememberMeCheckbox(
            value: rememberMe,
            onChanged: (value) {
              setState(() {
                rememberMe = value ?? false;
              });
            },
          ),

          ForgotPasswordButton(onPressed: () {}),

          const SizedBox(height: 20),

          LoginButton(onPressed: login),
          const SizedBox(height: 24),

          SocialLoginSection(onGooglePressed: () {}, onApplePressed: () {}),

          const SizedBox(height: 40),

          const LoginFooter(),
          const SizedBox(height: 12),

          const VersionLabel(),
        ],
      ),
    );
  }
}
