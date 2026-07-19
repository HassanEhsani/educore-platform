import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoadingNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void start() {
    state = true;
  }

  void stop() {
    state = false;
  }
}

final loadingProvider = NotifierProvider<LoadingNotifier, bool>(
  LoadingNotifier.new,
);
