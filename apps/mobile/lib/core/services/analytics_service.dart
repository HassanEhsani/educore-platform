class AnalyticsService {
  AnalyticsService._();

  static final AnalyticsService instance = AnalyticsService._();

  void logEvent(String name) {
    print('Analytics Event: $name');
  }
}
