import 'package:flutter/material.dart';

class ManagerBusinessCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final double revenue;

  const ManagerBusinessCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.revenue,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: colors.surface,

        borderRadius: BorderRadius.circular(24),

        border: Border.all(color: colors.outlineVariant),
      ),

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

                child: Icon(icon, color: colors.primary),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Text(
                  title,

                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),

          const SizedBox(height: 12),

          Text('Monthly Revenue', style: Theme.of(context).textTheme.bodySmall),

          const SizedBox(height: 6),

          Text(
            _currency(revenue),

            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  String _currency(double value) {
    return '\$${value.toStringAsFixed(0)}';
  }
}
