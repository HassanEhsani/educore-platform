import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            StudentHeader(student: student),

            const SizedBox(height: 24),

            Card(
              child: ListTile(
                leading: const Icon(Icons.badge),
                title: const Text('Student Number'),
                subtitle: Text(student.studentNumber),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.school),
                title: const Text('Grade'),
                subtitle: Text(student.grade),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
