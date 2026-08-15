import 'package:flutter/material.dart';

class ParentGradeCard extends StatelessWidget {
  final String subject;
  final double score;

  const ParentGradeCard({
    super.key,
    required this.subject,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.grade_outlined),

        title: Text(subject),

        trailing: Text(
          score.toString(),

          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
