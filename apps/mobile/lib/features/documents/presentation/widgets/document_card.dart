import 'package:flutter/material.dart';

import '../../domain/document.dart';

class DocumentCard extends StatelessWidget {
  final SchoolDocument document;

  const DocumentCard({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.description),
        title: Text(document.title),
        subtitle: Text('${document.category} • ${document.date}'),
        trailing: Text(document.fileType),
      ),
    );
  }
}
