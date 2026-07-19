class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();

  bool _initialized = false;

  Future<void> init() async {
    _initialized = true;
  }

  bool get isInitialized => _initialized;

  Future<void> logout() async {
    _initialized = false;
  }
}
