class ApiEndpoints {
  ApiEndpoints._();

  static const String baseUrl = 'https://api.educore.com';

  static const String login = '/auth/login';
  static const String logout = '/auth/logout';
  static const String refreshToken = '/auth/refresh';

  static const String profile = '/profile';

  static const String students = '/students';
  static const String teachers = '/teachers';
  static const String parents = '/parents';
  static const String managers = '/managers';

  static const String attendance = '/attendance';
  static const String documents = '/documents';
  static const String messages = '/messages';
  static const String notifications = '/notifications';
  static const String calendar = '/calendar';
  static const String settings = '/settings';
}
