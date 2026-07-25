import 'package:flutter/material.dart';

import '../../domain/academic_year_progress.dart';
import '../../domain/subject_progress.dart';
import 'student_progress_circle.dart';

class AcademicYearProgressCard extends StatelessWidget {
  final AcademicYearProgress year;
  final bool expanded;
  final VoidCallback onTap;

  const AcademicYearProgressCard({
    super.key,
    required this.year,
    required this.expanded,
    required this.onTap,
  });

  Color getColor(double value) {
    if (value >= 60) {
      return Colors.green;
    }

    if (value >= 40) {
      return Colors.orange;
    }

    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: expanded ? 5 : 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    'Grade ${year.grade}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    '${year.overallPercentage.toInt()}%',
                    style: TextStyle(
                      color: getColor(year.overallPercentage),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              if (expanded) ...[
                const SizedBox(height: 24),

                // Main yearly progress circle
                StudentProgressCircle(
                  percentage: year.overallPercentage,
                  size: 180,
                ),

                const SizedBox(height: 12),

                Text(
                  year.statusLabel,
                  style: TextStyle(
                    color: getColor(year.overallPercentage),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                const Divider(),

                const SizedBox(height: 12),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Subjects Performance',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 12),

                ...year.subjects.map((subject) => _buildSubjectCard(subject)),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubjectCard(SubjectProgress subject) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      elevation: 2,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

      child: Padding(
        padding: const EdgeInsets.all(12),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            // Small subject circle
            StudentProgressCircle(percentage: subject.percentage, size: 80),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    subject.subjectName,
                    overflow: TextOverflow.ellipsis,

                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    'Teacher: ${subject.teacherName}',

                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(color: Colors.grey.shade700),
                  ),

                  const SizedBox(height: 10),

                  _scoreRow('Exam', subject.examScore),

                  _scoreRow('Assignment', subject.assignmentScore),

                  _scoreRow('Attendance', subject.attendanceScore),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _scoreRow(String title, double score) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(title, style: const TextStyle(fontSize: 13)),

        Text(
          '${score.toInt()}%',

          style: TextStyle(fontWeight: FontWeight.bold, color: getColor(score)),
        ),
      ],
    );
  }
}
