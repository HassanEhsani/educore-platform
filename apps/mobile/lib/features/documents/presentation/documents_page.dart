import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_documents.dart';
import 'widgets/category_chip.dart';
import 'widgets/document_card.dart';
import 'widgets/upload_button.dart';

class DocumentsPage extends StatelessWidget {
  const DocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Documents')),
      floatingActionButton: const UploadButton(),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                CategoryChip(label: 'All'),
                CategoryChip(label: 'Homework'),
                CategoryChip(label: 'Presentation'),
                CategoryChip(label: 'Schedule'),
              ],
            ),
            const Gap(AppSpacing.lg),
            Expanded(
              child: ListView.builder(
                itemCount: demoDocuments.length,
                itemBuilder: (context, index) {
                  return DocumentCard(document: demoDocuments[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
