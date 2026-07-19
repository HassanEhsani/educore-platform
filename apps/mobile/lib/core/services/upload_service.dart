import 'dart:io';

class UploadService {
  UploadService._();

  static final UploadService instance = UploadService._();

  Future<String?> uploadFile(File file) async {
    return file.path;
  }
}
