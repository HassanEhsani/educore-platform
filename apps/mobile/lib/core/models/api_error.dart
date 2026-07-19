class ApiError {
  final int code;
  final String message;

  const ApiError({required this.code, required this.message});

  factory ApiError.fromJson(Map<String, dynamic> json) {
    return ApiError(code: json['code'], message: json['message']);
  }

  Map<String, dynamic> toJson() {
    return {'code': code, 'message': message};
  }
}
