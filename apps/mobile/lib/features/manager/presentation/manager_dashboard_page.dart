import 'package:flutter/material.dart';

import '../../../../core/widgets/app_shell.dart';

import 'manager_dashboard_body.dart';

class ManagerDashboardPage extends StatelessWidget {
  const ManagerDashboardPage({super.key});

  static const List<String> routes = [
    '/manager',
    '/manager/notifications',
    '/manager/profile',
    '/manager/settings',
  ];

  static const List<NavigationDestination> destinations = [
    NavigationDestination(
      icon: Icon(Icons.dashboard_outlined),
      selectedIcon: Icon(Icons.dashboard),
      label: 'Dashboard',
    ),

    NavigationDestination(
      icon: Icon(Icons.notifications_outlined),
      selectedIcon: Icon(Icons.notifications),
      label: 'Notifications',
    ),

    NavigationDestination(
      icon: Icon(Icons.person_outline),
      selectedIcon: Icon(Icons.person),
      label: 'Profile',
    ),

    NavigationDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'School Manager',

      currentIndex: 0,

      onTap: (_) {},

      destinations: destinations,

      routes: routes,

      body: const ManagerDashboardBody(),
    );
  }
}
