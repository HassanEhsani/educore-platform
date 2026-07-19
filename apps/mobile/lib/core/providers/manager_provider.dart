import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/manager_repository.dart';

final managerRepositoryProvider = Provider<ManagerRepository>((ref) {
  return ManagerRepository();
});
