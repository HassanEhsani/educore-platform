import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/document_repository.dart';

final documentRepositoryProvider = Provider<DocumentRepository>((ref) {
  return DocumentRepository();
});
