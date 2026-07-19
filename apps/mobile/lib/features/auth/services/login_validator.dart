class LoginValidator {
  static bool validate(String username, String password) {
    return username.isNotEmpty && password.length >= 6;
  }
}
