import 'dart:io';

class ImageService {
  ImageService._();

  static final ImageService instance = ImageService._();

  Future<File?> pickImage() async {
    return null;
  }

  Future<File?> uploadImage(File image) async {
    return image;
  }
}
