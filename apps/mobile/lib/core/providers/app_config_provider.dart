import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppConfigNotifier extends Notifier<Map<String, dynamic>> {
  @override
  Map<String, dynamic> build() {
    return {};
  }

  void updateConfig(Map<String, dynamic> config) {
    state = config;
  }

  void clear() {
    state = {};
  }
}

final appConfigProvider =
    NotifierProvider<AppConfigNotifier, Map<String, dynamic>>(
      AppConfigNotifier.new,
    );
