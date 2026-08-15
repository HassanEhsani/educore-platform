class ChildAttendance {
  final DateTime date;
  final String status;
  final String? note;

  const ChildAttendance({
    required this.date,
    required this.status,
    this.note,
  });
}
