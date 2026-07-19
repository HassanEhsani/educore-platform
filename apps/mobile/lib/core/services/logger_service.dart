import 'package:logger/logger.dart';

class LoggerService {
  LoggerService._();

  static final LoggerService instance = LoggerService._();

  final Logger _logger = Logger();

  void info(String message) {
    _logger.i(message);
  }

  void warning(String message) {
    _logger.w(message);
  }

  void error(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
