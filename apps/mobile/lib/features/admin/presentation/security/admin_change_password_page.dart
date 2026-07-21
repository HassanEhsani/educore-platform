import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminChangePasswordPage extends StatefulWidget {
  const AdminChangePasswordPage({super.key});

  @override
  State<AdminChangePasswordPage> createState() =>
      _AdminChangePasswordPageState();
}

class _AdminChangePasswordPageState extends State<AdminChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();

  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool obscureCurrent = true;
  bool obscureNew = true;
  bool obscureConfirm = true;

  @override
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }

  void _changePassword() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Password changed successfully')),
    );

    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.pop(),
        ),

        title: const Text('Change Password'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                'Update Password',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              Text(
                'Create a strong password to protect your account.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              const SizedBox(height: 24),

              _PasswordField(
                controller: currentPasswordController,
                label: 'Current Password',
                obscureText: obscureCurrent,
                onToggle: () {
                  setState(() {
                    obscureCurrent = !obscureCurrent;
                  });
                },
              ),

              const SizedBox(height: 16),

              _PasswordField(
                controller: newPasswordController,
                label: 'New Password',
                obscureText: obscureNew,
                onToggle: () {
                  setState(() {
                    obscureNew = !obscureNew;
                  });
                },
              ),

              const SizedBox(height: 16),

              _PasswordField(
                controller: confirmPasswordController,
                label: 'Confirm New Password',
                obscureText: obscureConfirm,
                onToggle: () {
                  setState(() {
                    obscureConfirm = !obscureConfirm;
                  });
                },

                validator: (value) {
                  if (value != newPasswordController.text) {
                    return 'Passwords do not match';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,

                child: FilledButton.icon(
                  onPressed: _changePassword,

                  icon: const Icon(Icons.lock_reset),

                  label: const Text('Update Password'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final VoidCallback onToggle;
  final String? Function(String?)? validator;

  const _PasswordField({
    required this.controller,
    required this.label,
    required this.obscureText,
    required this.onToggle,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      obscureText: obscureText,

      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter $label';
            }

            if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }

            return null;
          },

      decoration: InputDecoration(
        labelText: label,

        prefixIcon: const Icon(Icons.lock_outline),

        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),

          onPressed: onToggle,
        ),

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
