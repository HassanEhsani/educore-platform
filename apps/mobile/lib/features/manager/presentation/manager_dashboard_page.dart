import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'manager_dashboard_body.dart';

class ManagerDashboardPage extends StatelessWidget {
  const ManagerDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manager Dashboard'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/roles'),
        ),
      ),
      body: const ManagerDashboardBody(),
    );
  }
}
