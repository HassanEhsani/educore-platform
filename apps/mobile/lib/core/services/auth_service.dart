class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();

  bool _isLoggedIn = false;

  String? _currentUserId;

  Future<void> init() async {
    // TODO:
    // Later load token/session from secure storage
    _isLoggedIn = true;
  }

  bool get isLoggedIn => _isLoggedIn;

  String? get currentUserId => _currentUserId;

  Future<void> login(String userId) async {
    _currentUserId = userId;
    _isLoggedIn = true;
  }

  Future<void> logout() async {
    // TODO:
    // Later:
    // - remove access token
    // - clear refresh token
    // - clear local storage

    _currentUserId = null;
    _isLoggedIn = false;
  }
}
