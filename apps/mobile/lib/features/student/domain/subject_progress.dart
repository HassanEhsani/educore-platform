class SubjectProgress {
  final String subjectName;
  final String teacherName;
  final double percentage;
  final double assignmentScore;
  final double attendanceScore;
  final double examScore;

  const SubjectProgress({
    required this.subjectName,
    required this.teacherName,
    required this.percentage,
    required this.assignmentScore,
    required this.attendanceScore,
    required this.examScore,
  });
}
