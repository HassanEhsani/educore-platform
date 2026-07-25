import 'package:flutter/material.dart';

import '../../data/fake_academic_progress.dart';
import 'academic_year_progress_card.dart';

class StudentAcademicProgressSection extends StatelessWidget {
  const StudentAcademicProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Text(
          'Academic Progress',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 16),

        ...FakeAcademicProgress.years.map(
          (year) => Padding(
            padding: const EdgeInsets.only(bottom: 12),

            child: AcademicYearProgressCard(
              year: year,
              expanded: false,
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
