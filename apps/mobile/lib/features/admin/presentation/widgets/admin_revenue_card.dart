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
    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'Revenue Overview',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                _item(
                  context,
                  'Monthly',
                  '\$${monthlyRevenue.toStringAsFixed(0)}',
                ),

                _item(
                  context,
                  'Yearly',
                  '\$${yearlyRevenue.toStringAsFixed(0)}',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(BuildContext context, String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(title),

        const SizedBox(height: 6),

        Text(
          value,

          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
