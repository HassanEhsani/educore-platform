import 'package:flutter/material.dart';

class ManagerRevenueCard extends StatelessWidget {
  final double monthlyRevenue;
  final double growthPercentage;

  const ManagerRevenueCard({
    super.key,
    required this.monthlyRevenue,
    required this.growthPercentage,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final positive = growthPercentage >= 0;

    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),

        color: colors.primaryContainer,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            children: [
              Icon(
                Icons.account_balance_wallet,
                size: 32,
                color: colors.primary,
              ),

              const SizedBox(width: 12),

              const Text(
                'School Revenue',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),

          const SizedBox(height: 24),

          Text(
            _money(monthlyRevenue),

            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          Text(
            '${positive ? '+' : ''}${growthPercentage.toStringAsFixed(1)}% this month',

            style: TextStyle(
              color: positive ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  String _money(double value) {
    return '\$${value.toStringAsFixed(0)}';
  }
}
