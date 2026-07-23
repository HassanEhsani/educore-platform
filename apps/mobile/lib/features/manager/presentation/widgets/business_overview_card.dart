import 'package:flutter/material.dart';

class BusinessOverviewCard extends StatelessWidget {
  final String businessName;

  final String revenue;

  final String expenses;

  final String profit;

  final IconData icon;

  final Color? iconColor;

  const BusinessOverviewCard({
    super.key,
    required this.businessName,
    required this.revenue,
    required this.expenses,
    required this.profit,
    required this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final accentColor = iconColor ?? colors.primary;

    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                Container(
                  width: 48,

                  height: 48,

                  decoration: BoxDecoration(
                    color: accentColor.withValues(alpha: 0.15),

                    borderRadius: BorderRadius.circular(14),
                  ),

                  child: Icon(icon, color: accentColor, size: 26),
                ),

                const SizedBox(width: 14),

                Expanded(
                  child: Text(
                    businessName,

                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            _BusinessMetric(
              title: 'Revenue',

              value: revenue,

              icon: Icons.trending_up_outlined,

              color: Colors.green,
            ),

            const SizedBox(height: 12),

            _BusinessMetric(
              title: 'Expenses',

              value: expenses,

              icon: Icons.money_off_outlined,

              color: Colors.red,
            ),

            const SizedBox(height: 12),

            _BusinessMetric(
              title: 'Profit',

              value: profit,

              icon: Icons.account_balance_wallet_outlined,

              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class _BusinessMetric extends StatelessWidget {
  final String title;

  final String value;

  final IconData icon;

  final Color color;

  const _BusinessMetric({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: color),

        const SizedBox(width: 10),

        Expanded(
          child: Text(title, style: Theme.of(context).textTheme.bodyMedium),
        ),

        Text(
          value,

          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
