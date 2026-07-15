import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'student_dashboard_body.dart';
import 'widgets/bottom_navigation.dart';

class StudentDashboardPage extends StatelessWidget {
  const StudentDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/roles'),
        ),
        title: const Text('Student Dashboard'),
      ),
      body: const StudentDashboardBody(),
      bottomNavigationBar: const StudentBottomNavigation(currentIndex: 0),
    );
  }
}
