// lib/features/admin/presentation/widgets/admin_system_health_card.dart

import 'package:flutter/material.dart';

class AdminSystemHealthCard extends StatelessWidget {
  final double uptime;

  const AdminSystemHealthCard({super.key, required this.uptime});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final normalizedUptime = uptime.clamp(0.0, 100.0).toDouble();

    final health = _getHealthStatus(normalizedUptime);

    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,

                  decoration: BoxDecoration(
                    color: colors.primaryContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),

                  child: Icon(Icons.cloud_done, color: colors.primary),
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        'System Health',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        health.label,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: health.color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                Text(
                  '${normalizedUptime.toStringAsFixed(1)}%',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(10),

              child: LinearProgressIndicator(
                value: normalizedUptime / 100,
                minHeight: 8,
                backgroundColor: colors.surfaceContainerHighest,
                color: health.color,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'Server uptime and infrastructure status',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  _HealthStatus _getHealthStatus(double value) {
    if (value >= 99) {
      return const _HealthStatus(label: 'Excellent', color: Colors.green);
    }

    if (value >= 95) {
      return const _HealthStatus(label: 'Good', color: Colors.orange);
    }

    return const _HealthStatus(label: 'Needs Attention', color: Colors.red);
  }
}

class _HealthStatus {
  final String label;
  final Color color;

  const _HealthStatus({required this.label, required this.color});
}
