import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/app_initializer.dart';

final appInitializerProvider = Provider<AppInitializer>((ref) {
  return AppInitializer();
});
