import 'package:flutter/material.dart';

import '../../domain/revenue_summary.dart';

class RevenueBreakdownCard extends StatelessWidget {
  final RevenueSummary revenue;

  const RevenueBreakdownCard({super.key, required this.revenue});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Financial Overview',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            _RevenueRow(
              icon: Icons.school_outlined,
              title: 'Tuition Collection',
              value: revenue.tuitionCollection,
              color: colors.primary,
            ),

            const SizedBox(height: 16),

            _RevenueRow(
              icon: Icons.pending_actions_outlined,
              title: 'Pending Payments',
              value: revenue.pendingPayments,
              color: colors.error,
            ),

            const SizedBox(height: 20),

            Divider(color: colors.outlineVariant),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Monthly Collection',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                Text(
                  _formatCurrency(revenue.monthlyCollection),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
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
          backgroundColor: color.withValues(alpha: 0.12),

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
