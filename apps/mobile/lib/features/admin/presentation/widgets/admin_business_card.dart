import 'package:flutter/material.dart';

class AdminBusinessCard extends StatelessWidget {
  final int businesses;
  final int users;
  final double revenue;

  const AdminBusinessCard({
    super.key,
    this.businesses = 0,
    this.users = 0,
    this.revenue = 0,
  });

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
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: colors.primaryContainer,
                  child: Icon(Icons.business, color: colors.primary),
                ),

                const SizedBox(width: 12),

                Text(
                  'Business Overview',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                  child: _BusinessItem(
                    icon: Icons.domain,
                    title: 'Businesses',
                    value: businesses.toString(),
                  ),
                ),

                Expanded(
                  child: _BusinessItem(
                    icon: Icons.people,
                    title: 'Users',
                    value: users.toString(),
                  ),
                ),

                Expanded(
                  child: _BusinessItem(
                    icon: Icons.attach_money,
                    title: 'Revenue',
                    value: _formatCurrency(revenue),
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
    if (value >= 1000000) {
      return '\$${(value / 1000000).toStringAsFixed(1)}M';
    }

    if (value >= 1000) {
      return '\$${(value / 1000).toStringAsFixed(0)}K';
    }

    return '\$${value.toStringAsFixed(0)}';
  }
}

class _BusinessItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _BusinessItem({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      children: [
        Icon(icon, size: 22, color: colors.primary),

        const SizedBox(height: 8),

        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 4),

        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
