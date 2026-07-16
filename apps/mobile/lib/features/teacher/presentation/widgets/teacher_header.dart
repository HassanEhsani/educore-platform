import 'package:flutter/material.dart';
import '../../domain/teacher.dart';

class TeacherHeader extends StatelessWidget {
  final Teacher teacher;

  const TeacherHeader({super.key, required this.teacher});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const CircleAvatar(radius: 34, child: Icon(Icons.person, size: 36)),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    teacher.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(teacher.subject),
                  Text('Employee ID: ${teacher.employeeId}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
