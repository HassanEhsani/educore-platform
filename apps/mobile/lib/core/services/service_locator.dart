import 'package:dio/dio.dart';

import '../network/api_client.dart';
import '../repositories/attendance_repository.dart';
import '../repositories/auth_repository.dart';
import '../repositories/calendar_repository.dart';
import '../repositories/document_repository.dart';
import '../repositories/manager_repository.dart';
import '../repositories/message_repository.dart';
import '../repositories/notification_repository.dart';
import '../repositories/parent_repository.dart';
import '../repositories/profile_repository.dart';
import '../repositories/settings_repository.dart';
import '../repositories/student_repository.dart';
import '../repositories/teacher_repository.dart';

class ServiceLocator {
  static late final Dio dio;

  static late final ApiClient apiClient;

  static late final AuthRepository authRepository;
  static late final ProfileRepository profileRepository;
  static late final StudentRepository studentRepository;
  static late final TeacherRepository teacherRepository;
  static late final ParentRepository parentRepository;
  static late final ManagerRepository managerRepository;
  static late final MessageRepository messageRepository;
  static late final NotificationRepository notificationRepository;
  static late final CalendarRepository calendarRepository;
  static late final DocumentRepository documentRepository;
  static late final AttendanceRepository attendanceRepository;
  static late final SettingsRepository settingsRepository;

  static void init() {
    dio = Dio();

    apiClient = ApiClient.create();
    authRepository = AuthRepository();
    profileRepository = ProfileRepository();
    studentRepository = StudentRepository();
    teacherRepository = TeacherRepository();
    parentRepository = ParentRepository();
    managerRepository = ManagerRepository();
    messageRepository = MessageRepository();
    notificationRepository = NotificationRepository();
    calendarRepository = CalendarRepository();
    documentRepository = DocumentRepository();
    attendanceRepository = AttendanceRepository();
    settingsRepository = SettingsRepository();
  }
}
