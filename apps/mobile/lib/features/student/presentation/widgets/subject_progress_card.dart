import 'package:flutter/material.dart';

import 'student_progress_circle.dart';

class SubjectProgressCard extends StatelessWidget {
  final String subjectName;
  final double progress;
  final String teacherName;

  const SubjectProgressCard({
    super.key,
    required this.subjectName,
    required this.progress,
    required this.teacherName,
  });

  Color get progressColor {
    if (progress >= 60) {
      return Colors.green;
    }

    if (progress >= 40) {
      return Colors.orange;
    }

    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          children: [
            StudentProgressCircle(percentage: progress),

            const SizedBox(width: 20),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    subjectName,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Teacher: $teacherName',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 12),

                  LinearProgressIndicator(
                    value: progress / 100,

                    minHeight: 8,

                    borderRadius: BorderRadius.circular(20),

                    color: progressColor,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    progress >= 60
                        ? 'Good progress - Keep going'
                        : 'Need more effort to pass',

                    style: TextStyle(
                      color: progressColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
