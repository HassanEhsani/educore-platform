class ErrorHandlerService {
  ErrorHandlerService._();

  static final ErrorHandlerService instance = ErrorHandlerService._();

  void handle(Object error) {
    print('Application Error: $error');
  }
}
