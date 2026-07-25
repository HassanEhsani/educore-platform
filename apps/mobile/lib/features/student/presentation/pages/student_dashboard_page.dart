import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudentDashboardPage extends StatelessWidget {
  const StudentDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Dashboard'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Welcome Back 👋',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 24),

          _DashboardCard(
            icon: Icons.person,
            title: 'My Profile',
            subtitle: 'Personal information',
            onTap: () => context.push('/student/profile'),
          ),

          const SizedBox(height: 16),

          _DashboardCard(
            icon: Icons.analytics,
            title: 'Academic Progress',
            subtitle: 'Grades, subjects and performance',
            onTap: () => context.push('/student/academic-progress'),
          ),

          const SizedBox(height: 16),

          _DashboardCard(
            icon: Icons.assignment,
            title: 'Assignments',
            subtitle: 'Homework and projects',
            onTap: () {},
          ),

          const SizedBox(height: 16),

          _DashboardCard(
            icon: Icons.calendar_month,
            title: 'Attendance',
            subtitle: 'Attendance history',
            onTap: () {},
          ),

          const SizedBox(height: 16),

          _DashboardCard(
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'School announcements',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _DashboardCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(radius: 26, child: Icon(icon)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
