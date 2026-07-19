import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/message_repository.dart';

final messageRepositoryProvider = Provider<MessageRepository>((ref) {
  return MessageRepository();
});
