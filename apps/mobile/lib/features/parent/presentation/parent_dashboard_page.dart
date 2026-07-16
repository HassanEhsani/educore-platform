import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'parent_dashboard_body.dart';

class ParentDashboardPage extends StatelessWidget {
  const ParentDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Dashboard'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/roles'),
        ),
      ),
      body: const ParentDashboardBody(),
    );
  }
}
