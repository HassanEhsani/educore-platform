class AnalyticsService {
  AnalyticsService._();

  static final AnalyticsService instance = AnalyticsService._();

  void logEvent(String name) {
    // ignore: avoid_print
    print('Analytics Event: $name');
  }
}
