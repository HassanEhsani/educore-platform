import 'package:flutter/material.dart';

class ParentNotificationCard extends StatelessWidget {
  final String title;
  final String message;
  final String date;

  const ParentNotificationCard({
    super.key,
    required this.title,
    required this.message,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                const Icon(Icons.notifications_outlined),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    title,

                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Text(message),

            const SizedBox(height: 8),

            Text(
              date,

              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
