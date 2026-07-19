import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/notification_repository.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepository();
});
