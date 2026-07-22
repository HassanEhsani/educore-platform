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

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: colors.surface,

        borderRadius: BorderRadius.circular(20),

        border: Border.all(color: colors.outlineVariant),
      ),

      child: Row(
        children: [
          CircleAvatar(
            radius: 26,

            backgroundColor: colors.primaryContainer,

            child: Icon(icon, color: colors.primary),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),

                const SizedBox(height: 6),

                Text(
                  value,

                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
