import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/parent_repository.dart';

final parentRepositoryProvider = Provider<ParentRepository>((ref) {
  return ParentRepository();
});
