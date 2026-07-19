import 'dart:io';

class FileService {
  FileService._();

  static final FileService instance = FileService._();

  Future<bool> exists(String path) async {
    return File(path).exists();
  }

  Future<void> delete(String path) async {
    final file = File(path);

    if (await file.exists()) {
      await file.delete();
    }
  }
}
