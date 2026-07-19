import '../models/user_model.dart';
import 'storage_service.dart';

class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();

  final StorageService _storage = StorageService.instance;

  static const String _tokenKey = 'auth_token';
  static const String _userKey = 'current_user';

  Future<void> saveToken(String token) async {
    await _storage.setString(_tokenKey, token);
  }

  String? getToken() {
    return _storage.getString(_tokenKey);
  }

  Future<void> saveUser(UserModel user) async {
    await _storage.setString(_userKey, user.toJson().toString());
  }

  Future<void> logout() async {
    await _storage.remove(_tokenKey);
    await _storage.remove(_userKey);
  }

  bool get isAuthenticated {
    return getToken() != null;
  }
}
