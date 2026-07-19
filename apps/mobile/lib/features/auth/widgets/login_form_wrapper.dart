import 'package:flutter/material.dart';

import 'login_card.dart';
import 'login_form.dart';
import 'login_header_section.dart';
import 'login_title.dart';

class LoginFormWrapper extends StatelessWidget {
  const LoginFormWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LoginTitle(),
          SizedBox(height: 24),
          LoginHeaderSection(),
          SizedBox(height: 32),
          LoginForm(),
        ],
      ),
    );
  }
}
