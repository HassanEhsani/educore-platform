import '../domain/subject_progress.dart';

class FakeSubjectProgress {
  static const List<SubjectProgress> subjects = [
    SubjectProgress(
      subjectName: 'Mathematics',
      teacherName: 'Ahmad Rahimi',
      percentage: 72,
      assignmentScore: 80,
      attendanceScore: 90,
      examScore: 75,
    ),

    SubjectProgress(
      subjectName: 'Physics',
      teacherName: 'Sara Mohammadi',
      percentage: 55,
      assignmentScore: 60,
      attendanceScore: 85,
      examScore: 50,
    ),

    SubjectProgress(
      subjectName: 'English',
      teacherName: 'John Smith',
      percentage: 88,
      assignmentScore: 90,
      attendanceScore: 95,
      examScore: 85,
    ),

    SubjectProgress(
      subjectName: 'Chemistry',
      teacherName: 'Ali Hassan',
      percentage: 64,
      assignmentScore: 70,
      attendanceScore: 80,
      examScore: 65,
    ),
  ];
}
