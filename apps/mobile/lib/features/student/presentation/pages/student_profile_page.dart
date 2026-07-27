import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/services/auth_service.dart';
import '../../data/fake_student_data.dart';
import '../widgets/student_header.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final student = FakeStudentData.student;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Profile'),
        centerTitle: true,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),

          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/student');
            }
          },
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            StudentHeader(student: student),

            const SizedBox(height: 24),

            _sectionTitle('Personal Information'),

            const SizedBox(height: 12),

            _infoCard(
              icon: Icons.badge,
              title: 'Student Number',
              value: student.studentNumber,
            ),

            _infoCard(
              icon: Icons.school,
              title: 'Grade',
              value: student.gradeLabel,
            ),

            const SizedBox(height: 24),

            _sectionTitle('Academic Overview'),

            const SizedBox(height: 12),

            Card(
              child: ListTile(
                leading: const Icon(Icons.analytics),

                title: const Text('Academic Progress'),

                subtitle: const Text('View grades and subject performance'),

                trailing: const Icon(Icons.arrow_forward_ios),

                onTap: () {
                  context.push('/student/academic-progress');
                },
              ),
            ),

            const SizedBox(height: 32),

            _logoutCard(context),
          ],
        ),
      ),
    );
  }

  Widget _logoutCard(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.logout_rounded)),

        title: const Text(
          'Logout',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        subtitle: const Text('Sign out from your account'),

        trailing: const Icon(Icons.arrow_forward_ios),

        onTap: () async {
          final confirmed = await _showLogoutDialog(context);

          if (!confirmed) {
            return;
          }

          await AuthService.instance.logout();

          if (context.mounted) {
            context.go('/');
          }
        },
      ),
    );
  }

  Future<bool> _showLogoutDialog(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,

      builder: (context) {
        return AlertDialog(
          title: const Text('Logout'),

          content: const Text('Are you sure you want to logout?'),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },

              child: const Text('Cancel'),
            ),

            FilledButton(
              onPressed: () {
                Navigator.pop(context, true);
              },

              child: const Text('Logout'),
            ),
          ],
        );
      },
    );

    return result ?? false;
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,

      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _infoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      child: ListTile(
        leading: Icon(icon),

        title: Text(title),

        subtitle: Text(value),
      ),
    );
  }
}
