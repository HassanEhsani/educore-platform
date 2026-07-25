import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudentBottomNavigation extends StatelessWidget {
  final int currentIndex;

  const StudentBottomNavigation({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,

      onDestinationSelected: (index) {
        switch (index) {
          case 0:
            context.go('/student');
            break;

          case 1:
            context.go('/student/schedule');
            break;

          case 2:
            context.go('/student/notifications');
            break;

          case 3:
            context.go('/student/profile');
            break;
        }
      },

      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: 'Home',
        ),

        NavigationDestination(
          icon: Icon(Icons.calendar_month_outlined),
          selectedIcon: Icon(Icons.calendar_month),
          label: 'Schedule',
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
      ],
    );
  }
}
