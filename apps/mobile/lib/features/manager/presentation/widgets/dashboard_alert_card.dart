import 'package:flutter/material.dart';

import '../../domain/entities/dashboard_alert.dart';

class DashboardAlertCard extends StatelessWidget {
  final DashboardAlert alert;

  const DashboardAlertCard({super.key, required this.alert});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final color = _getAlertColor(alert.type);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              padding: const EdgeInsets.all(10),

              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.12),

                borderRadius: BorderRadius.circular(12),
              ),

              child: Icon(alert.icon, color: color, size: 26),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    alert.title,

                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(alert.message, style: theme.textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getAlertColor(AlertType type) {
    switch (type) {
      case AlertType.warning:
        return Colors.orange;

      case AlertType.success:
        return Colors.green;

      case AlertType.info:
        return Colors.blue;

      case AlertType.error:
        return Colors.red;
    }
  }
}
