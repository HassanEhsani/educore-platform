// lib/features/admin/presentation/widgets/admin_revenue_card.dart

import 'package:flutter/material.dart';

class AdminRevenueCard extends StatelessWidget {
  final double monthlyRevenue;
  final double yearlyRevenue;

  const AdminRevenueCard({
    super.key,
    required this.monthlyRevenue,
    required this.yearlyRevenue,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final progress = _calculateProgress();

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
                CircleAvatar(
                  radius: 20,
                  backgroundColor: colors.primaryContainer,
                  child: Icon(Icons.payments_outlined, color: colors.primary),
                ),

                const SizedBox(width: 12),

                Text(
                  'Revenue Performance',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                  child: _RevenueItem(
                    title: 'Monthly Revenue',
                    value: _formatCurrency(monthlyRevenue),
                    icon: Icons.calendar_month_outlined,
                  ),
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: _RevenueItem(
                    title: 'Yearly Revenue',
                    value: _formatCurrency(yearlyRevenue),
                    icon: Icons.account_balance_wallet_outlined,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 8,
                backgroundColor: colors.surfaceContainerHighest,
                color: colors.primary,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              '${(progress * 100).toInt()}% of yearly goal achieved',
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  double _calculateProgress() {
    // Temporary demo target.
    // Later this should come from business settings.

    const yearlyGoal = 720000.0;

    final result = yearlyRevenue / yearlyGoal;

    return result.clamp(0.0, 1.0);
  }

  String _formatCurrency(double value) {
    if (value >= 1000000) {
      return '\$${(value / 1000000).toStringAsFixed(1)}M';
    }

    if (value >= 1000) {
      return '\$${(value / 1000).toStringAsFixed(0)}K';
    }

    return '\$${value.toStringAsFixed(0)}';
  }
}

class _RevenueItem extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _RevenueItem({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Icon(icon, size: 20, color: colors.primary),

          const SizedBox(height: 10),

          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),

          const SizedBox(height: 6),

          Text(
            value,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
