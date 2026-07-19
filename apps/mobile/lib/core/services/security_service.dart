class SecurityService {
  SecurityService._();

  static final SecurityService instance = SecurityService._();

  bool _secure = false;

  Future<void> enableSecurity() async {
    _secure = true;
  }

  Future<void> disableSecurity() async {
    _secure = false;
  }

  bool get isSecure => _secure;
}
