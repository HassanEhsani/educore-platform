import 'subject_progress.dart';

class AcademicYearProgress {
  final int grade;
  final List<SubjectProgress> subjects;

  const AcademicYearProgress({required this.grade, required this.subjects});

  double get overallPercentage {
    if (subjects.isEmpty) return 0;

    final total = subjects.fold<double>(
      0,
      (sum, subject) => sum + subject.percentage,
    );

    return total / subjects.length;
  }

  String get statusLabel {
    if (overallPercentage >= 80) {
      return 'Excellent';
    }

    if (overallPercentage >= 60) {
      return 'Passed';
    }

    if (overallPercentage >= 40) {
      return 'Needs Improvement';
    }

    return 'Critical';
  }
}
