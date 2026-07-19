import 'package:intl/intl.dart';

class DateService {
  DateService._();

  static final DateService instance = DateService._();

  String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  String formatDateTime(DateTime date) {
    return DateFormat('yyyy-MM-dd HH:mm').format(date);
  }
}
