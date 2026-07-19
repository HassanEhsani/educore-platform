class ErrorHandlerService {
  ErrorHandlerService._();

  static final ErrorHandlerService instance = ErrorHandlerService._();

  void handle(Object error) {
    // ignore: avoid_print
    print('Application Error: $error');
  }
}
