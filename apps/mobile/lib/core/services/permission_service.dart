class PermissionService {
  PermissionService._();

  static final PermissionService instance = PermissionService._();

  Future<bool> requestStoragePermission() async {
    return true;
  }

  Future<bool> requestCameraPermission() async {
    return true;
  }
}
