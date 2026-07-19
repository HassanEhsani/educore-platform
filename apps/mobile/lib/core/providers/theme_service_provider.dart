import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/theme_service.dart';

final themeServiceProvider = Provider<ThemeService>((ref) {
  return ThemeService.instance;
});
