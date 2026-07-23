import 'package:flutter/material.dart';

class StatisticsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const StatisticsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),

      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),

      decoration: BoxDecoration(
        color: colors.surface,

        borderRadius: BorderRadius.circular(20),

        border: Border.all(color: colors.outlineVariant),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          CircleAvatar(
            radius: 24,

            backgroundColor: colors.primaryContainer,

            child: Icon(icon, color: colors.primary, size: 22),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              mainAxisSize: MainAxisSize.min,

              children: [
                Text(
                  title,

                  maxLines: 1,

                  overflow: TextOverflow.ellipsis,

                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                ),

                const SizedBox(height: 4),

                Text(
                  value,

                  maxLines: 1,

                  overflow: TextOverflow.ellipsis,

                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
