import 'subject_progress.dart';

class AcademicProgress {
  final double overallPercentage;
  final List<SubjectProgress> subjects;

  const AcademicProgress({
    required this.overallPercentage,
    required this.subjects,
  });

  bool get isPassed {
    return overallPercentage >= 60;
  }

  String get statusLabel {
    if (overallPercentage >= 80) {
      return 'Excellent';
    }

    if (overallPercentage >= 60) {
      return 'Passed';
    }

    return 'Needs Improvement';
  }
}
