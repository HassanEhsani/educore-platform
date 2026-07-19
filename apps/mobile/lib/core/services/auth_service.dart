import '../models/user_model.dart';
import 'storage_service.dart';

class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();

  bool _initialized = false;

  Future<void> init() async {
    _initialized = true;
  }

  bool get isInitialized {
    return _initialized;
  }

  Future<void> logout() async {
    _initialized = false;
  }
}
