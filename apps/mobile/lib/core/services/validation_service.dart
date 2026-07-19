class ValidationService {
  ValidationService._();

  static final ValidationService instance = ValidationService._();

  bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  bool isPasswordValid(String password) {
    return password.length >= 8;
  }
}
