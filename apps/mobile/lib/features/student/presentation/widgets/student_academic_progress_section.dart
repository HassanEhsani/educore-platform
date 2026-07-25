import 'package:flutter/material.dart';

import '../../data/fake_subject_progress.dart';
import '../../domain/academic_progress.dart';
import 'subject_progress_card.dart';

class StudentAcademicProgressSection extends StatelessWidget {
  const StudentAcademicProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final academicProgress = AcademicProgress(
      overallPercentage: 70,
      subjects: FakeSubjectProgress.subjects,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Academic Progress',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 16),

        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 140,
                  width: 140,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: CircularProgressIndicator(
                          strokeWidth: 12,
                          value: academicProgress.overallPercentage / 100,
                        ),
                      ),

                      Text(
                        '${academicProgress.overallPercentage.toInt()}%',
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Overall Academic Performance',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 24),

        const Text(
          'Subjects',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 12),

        ...academicProgress.subjects.map(
          (subject) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: SubjectProgressCard(
              subjectName: subject.subjectName,
              teacherName: subject.teacherName,
              progress: subject.percentage,
            ),
          ),
        ),
      ],
    );
  }
}
