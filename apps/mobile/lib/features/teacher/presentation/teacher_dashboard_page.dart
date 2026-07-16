import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'teacher_dashboard_body.dart';

class TeacherDashboardPage extends StatelessWidget {
  const TeacherDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Dashboard'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/roles'),
        ),
      ),
      body: const TeacherDashboardBody(),
    );
  }
}
