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

              child: Icon(icon, color: color),
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
                                    ? FontWeight.normal
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

                  Text(notification.message),

                  const SizedBox(height: 8),

                  Text(
                    _formatDate(notification.createdAt),

                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey),
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
      case NotificationType.academic:
        return Colors.blue;

      case NotificationType.grade:
        return Colors.indigo;

      case NotificationType.assignment:
        return Colors.purple;

      case NotificationType.attendance:
        return Colors.orange;

      case NotificationType.announcement:
        return Colors.amber;

      case NotificationType.payment:
        return Colors.green;

      case NotificationType.system:
        return Colors.grey;

      case NotificationType.general:
        return Colors.teal;
    }
  }

  IconData _getTypeIcon(NotificationType type) {
    switch (type) {
      case NotificationType.academic:
        return Icons.school_outlined;

      case NotificationType.grade:
        return Icons.grade_outlined;

      case NotificationType.assignment:
        return Icons.assignment_outlined;

      case NotificationType.attendance:
        return Icons.fact_check_outlined;

      case NotificationType.announcement:
        return Icons.campaign_outlined;

      case NotificationType.payment:
        return Icons.payment_outlined;

      case NotificationType.system:
        return Icons.settings_outlined;

      case NotificationType.general:
        return Icons.notifications_outlined;
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
