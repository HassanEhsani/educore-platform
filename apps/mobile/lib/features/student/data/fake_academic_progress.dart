import '../domain/academic_year_progress.dart';
import '../domain/subject_progress.dart';

class FakeAcademicProgress {
  static const List<AcademicYearProgress> years = [
    AcademicYearProgress(
      grade: 10,
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
          percentage: 83,
          examScore: 85,
          assignmentScore: 80,
          attendanceScore: 90,
        ),

        SubjectProgress(
          subjectName: 'Chemistry',
          teacherName: 'Ali Ahmad',
          percentage: 45,
          examScore: 40,
          assignmentScore: 50,
          attendanceScore: 70,
        ),

        SubjectProgress(
          subjectName: 'History',
          teacherName: 'Maryam Noor',
          percentage: 10,
          examScore: 15,
          assignmentScore: 10,
          attendanceScore: 50,
        ),
      ],
    ),

    AcademicYearProgress(
      grade: 9,
      subjects: [
        SubjectProgress(
          subjectName: 'Mathematics',
          teacherName: 'Ahmad Rahimi',
          percentage: 65,
          examScore: 70,
          assignmentScore: 60,
          attendanceScore: 80,
        ),

        SubjectProgress(
          subjectName: 'Biology',
          teacherName: 'Sara Mohammadi',
          percentage: 70,
          examScore: 75,
          assignmentScore: 65,
          attendanceScore: 80,
        ),

        SubjectProgress(
          subjectName: 'English',
          teacherName: 'John Smith',
          percentage: 40,
          examScore: 45,
          assignmentScore: 35,
          attendanceScore: 70,
        ),

        SubjectProgress(
          subjectName: 'Computer',
          teacherName: 'Ali Ahmad',
          percentage: 88,
          examScore: 90,
          assignmentScore: 85,
          attendanceScore: 95,
        ),

        SubjectProgress(
          subjectName: 'Geography',
          teacherName: 'Maryam Noor',
          percentage: 55,
          examScore: 60,
          assignmentScore: 50,
          attendanceScore: 70,
        ),
      ],
    ),
  ];
}
