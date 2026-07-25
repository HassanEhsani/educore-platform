import 'academic_year_progress.dart';

class AcademicProgress {
  final List<AcademicYearProgress> years;

  const AcademicProgress({required this.years});

  AcademicYearProgress? get currentYear {
    if (years.isEmpty) {
      return null;
    }

    return years.first;
  }
}
