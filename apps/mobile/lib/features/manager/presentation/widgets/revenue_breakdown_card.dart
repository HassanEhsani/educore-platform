import 'package:flutter/material.dart';

import '../../domain/revenue_summary.dart';

class RevenueBreakdownCard extends StatelessWidget {
  final RevenueSummary revenue;

  const RevenueBreakdownCard({super.key, required this.revenue});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: colors.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Revenue Breakdown',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          _RevenueRow(
            icon: Icons.school,
            title: 'EduCore School',
            value: revenue.schoolRevenue,
            color: colors.primary,
          ),

          const SizedBox(height: 16),

          _RevenueRow(
            icon: Icons.wifi,
            title: 'EduCore ISP',
            value: revenue.ispRevenue,
            color: colors.secondary,
          ),

          const SizedBox(height: 16),

          _RevenueRow(
            icon: Icons.biotech,
            title: 'Laboratory',
            value: revenue.laboratoryRevenue,
            color: colors.tertiary,
          ),

          const SizedBox(height: 20),

          Divider(color: colors.outlineVariant),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total Revenue',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Text(
                _formatCurrency(revenue.totalRevenue),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatCurrency(double value) {
    return '\$${value.toStringAsFixed(0)}';
  }
}

class _RevenueRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final double value;
  final Color color;

  const _RevenueRow({
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: color.withValues(alpha: 0.15),
          child: Icon(icon, color: color),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),

        Text(
          '\$${value.toStringAsFixed(0)}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
