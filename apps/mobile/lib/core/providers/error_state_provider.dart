import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorStateNotifier extends Notifier<String?> {
  @override
  String? build() {
    return null;
  }

  void setError(String message) {
    state = message;
  }

  void clear() {
    state = null;
  }
}

final errorStateProvider = NotifierProvider<ErrorStateNotifier, String?>(
  ErrorStateNotifier.new,
);
