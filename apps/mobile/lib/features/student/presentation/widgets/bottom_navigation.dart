import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudentBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const StudentBottomNavigation({
    super.key,
    required this.currentIndex,
    this.onTap,
  });

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
            context.push('/calendar');
            break;

          case 2:
            context.push('/messages');
            break;

          case 3:
            context.push('/profile');
            break;
        }

        onTap?.call(index);
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
          label: 'Calendar',
        ),
        NavigationDestination(
          icon: Icon(Icons.message_outlined),
          selectedIcon: Icon(Icons.message),
          label: 'Messages',
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
