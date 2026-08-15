import '../domain/child_attendance.dart';
import '../domain/child_fee.dart';
import '../domain/child_grade.dart';
import '../domain/parent.dart';
import '../domain/parent_dashboard_summary.dart';
import '../domain/parent_notification.dart';

class FakeParentData {
  static const Parent parent = Parent(
    name: 'Ahmad Ahmadi',
    email: 'ahmad.ahmadi@example.com',
    studentName: 'Ali Ahmadi',
    studentClass: 'Grade 10 - Class A',
    studentNumber: 'ST-2026-001',
    avatarUrl: '',
    attendance: 98,
    unreadMessages: 3,
    relationship: 'Father',
  );

  static const ParentDashboardSummary summary = ParentDashboardSummary(
    childrenCount: 1,
    totalAssignments: 20,
    completedAssignments: 18,
    averageScore: 91.5,
    attendanceRate: 98,
    pendingFees: 300,
    upcomingExams: 2,
  );

  static const List<ChildGrade> grades = [
    ChildGrade(
      subject: 'Mathematics',
      teacher: 'Mr. Rahimi',
      score: 92,
      letterGrade: 'A',
      term: 'Term 1',
    ),
    ChildGrade(
      subject: 'Physics',
      teacher: 'Mr. Ahmadi',
      score: 88,
      letterGrade: 'B+',
      term: 'Term 1',
    ),
    ChildGrade(
      subject: 'Chemistry',
      teacher: 'Ms. Karimi',
      score: 94,
      letterGrade: 'A',
      term: 'Term 1',
    ),
    ChildGrade(
      subject: 'English',
      teacher: 'Ms. Safi',
      score: 90,
      letterGrade: 'A-',
      term: 'Term 1',
    ),
    ChildGrade(
      subject: 'History',
      teacher: 'Mr. Waziri',
      score: 87,
      letterGrade: 'B+',
      term: 'Term 1',
    ),
  ];

  static final List<ChildAttendance> attendance = [
    ChildAttendance(
      date: DateTime(2026, 8, 3),
      status: 'present',
    ),
    ChildAttendance(
      date: DateTime(2026, 8, 4),
      status: 'present',
    ),
    ChildAttendance(
      date: DateTime(2026, 8, 5),
      status: 'late',
      note: 'Arrived 10 minutes late',
    ),
    ChildAttendance(
      date: DateTime(2026, 8, 6),
      status: 'present',
    ),
    ChildAttendance(
      date: DateTime(2026, 8, 7),
      status: 'absent',
      note: 'Sick leave',
    ),
  ];

  static final List<ChildFee> fees = [
    ChildFee(
      title: 'Monthly Tuition - August',
      amount: 300,
      paidAmount: 0,
      dueDate: DateTime(2026, 8, 15),
      status: 'pending',
    ),
    ChildFee(
      title: 'Monthly Tuition - July',
      amount: 300,
      paidAmount: 300,
      dueDate: DateTime(2026, 7, 15),
      status: 'paid',
    ),
    ChildFee(
      title: 'Laboratory Fee',
      amount: 50,
      paidAmount: 25,
      dueDate: DateTime(2026, 8, 20),
      status: 'partial',
    ),
  ];

  static final List<ParentNotification> notifications = [
    ParentNotification(
      title: 'New Grade Available',
      message: 'Ali received a new Mathematics grade.',
      createdAt: DateTime(2026, 8, 8, 10, 30),
      isRead: false,
      type: 'grade',
    ),
    ParentNotification(
      title: 'Fee Payment Reminder',
      message: 'August tuition payment is due on August 15.',
      createdAt: DateTime(2026, 8, 7, 9, 0),
      isRead: false,
      type: 'fee',
    ),
    ParentNotification(
      title: 'Attendance Update',
      message: 'Ali was marked absent on August 7.',
      createdAt: DateTime(2026, 8, 7, 14, 15),
      isRead: true,
      type: 'attendance',
    ),
  ];
}
