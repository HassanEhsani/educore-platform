class ExportService {
  ExportService._();

  static final ExportService instance = ExportService._();

  Future<String> exportData(Map<String, dynamic> data) async {
    return data.toString();
  }
}
