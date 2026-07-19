import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/calendar_repository.dart';

final calendarRepositoryProvider = Provider<CalendarRepository>((ref) {
  return CalendarRepository();
});
