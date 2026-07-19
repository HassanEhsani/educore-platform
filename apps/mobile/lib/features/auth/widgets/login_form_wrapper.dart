import 'package:flutter/material.dart';

import 'login_container.dart';
import 'login_form.dart';

class LoginFormWrapper extends StatelessWidget {
  const LoginFormWrapper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const LoginContainer(
      child: LoginForm(),
    );
  }
}