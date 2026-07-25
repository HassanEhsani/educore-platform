import 'package:flutter/material.dart';

import '../../data/fake_academic_progress.dart';
import '../widgets/academic_year_progress_card.dart';

class StudentAcademicProgressPage extends StatefulWidget {
  const StudentAcademicProgressPage({super.key});

  @override
  State<StudentAcademicProgressPage> createState() =>
      _StudentAcademicProgressPageState();
}

class _StudentAcademicProgressPageState
    extends State<StudentAcademicProgressPage> {
  int selectedGrade = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Academic Progress')),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          const Text(
            'Academic Years',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          ...FakeAcademicProgress.years.map(
            (year) => Padding(
              padding: const EdgeInsets.only(bottom: 16),

              child: AcademicYearProgressCard(
                year: year,

                expanded: selectedGrade == year.grade,

                onTap: () {
                  setState(() {
                    selectedGrade = year.grade;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
