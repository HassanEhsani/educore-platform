import '../domain/academic_progress.dart';
import '../domain/subject_progress.dart';

class FakeAcademicProgress {
  static const AcademicProgress progress = AcademicProgress(
    overallPercentage: 72,
    subjects: [
      SubjectProgress(
        subjectName: 'Mathematics',
        teacherName: 'Ahmad Rahimi',
        percentage: 72,
        examScore: 70,
        assignmentScore: 80,
        attendanceScore: 90,
      ),

      SubjectProgress(
        subjectName: 'Physics',
        teacherName: 'Sara Mohammadi',
        percentage: 55,
        examScore: 50,
        assignmentScore: 60,
        attendanceScore: 80,
      ),

      SubjectProgress(
        subjectName: 'English',
        teacherName: 'John Smith',
        percentage: 88,
        examScore: 90,
        assignmentScore: 85,
        attendanceScore: 95,
      ),
    ],
  );
}
