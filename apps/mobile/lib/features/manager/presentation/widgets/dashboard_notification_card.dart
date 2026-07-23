import 'package:flutter/material.dart';

import '../../domain/entities/dashboard_notification.dart';

class DashboardNotificationCard extends StatelessWidget {
  final DashboardNotification notification;

  const DashboardNotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    final color = _getTypeColor(notification.type);

    final icon = _getTypeIcon(notification.type);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      elevation: notification.isRead ? 0 : 2,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: 44,

              height: 44,

              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.15),

                borderRadius: BorderRadius.circular(12),
              ),

              child: Icon(icon, color: color, size: 24),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          notification.title,

                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontWeight: notification.isRead
                                    ? FontWeight.w500
                                    : FontWeight.bold,
                              ),
                        ),
                      ),

                      if (!notification.isRead)
                        Container(
                          width: 8,

                          height: 8,

                          decoration: BoxDecoration(
                            color: color,

                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Text(
                    notification.message,

                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    _formatDate(notification.createdAt),

                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getTypeColor(NotificationType type) {
    switch (type) {
      case NotificationType.payment:
        return Colors.green;

      case NotificationType.attendance:
        return Colors.orange;

      case NotificationType.academic:
        return Colors.blue;

      case NotificationType.system:
        return Colors.grey;
    }
  }

  IconData _getTypeIcon(NotificationType type) {
    switch (type) {
      case NotificationType.payment:
        return Icons.payment_outlined;

      case NotificationType.attendance:
        return Icons.fact_check_outlined;

      case NotificationType.academic:
        return Icons.school_outlined;

      case NotificationType.system:
        return Icons.settings_outlined;
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
