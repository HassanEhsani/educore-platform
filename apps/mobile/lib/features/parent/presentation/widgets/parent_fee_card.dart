import 'package:flutter/material.dart';

class ParentFeeCard extends StatelessWidget {
  final int amount;
  final bool paid;

  const ParentFeeCard({super.key, required this.amount, required this.paid});

  @override
  Widget build(BuildContext context) {
    final color = paid ? Colors.green : Colors.red;

    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withValues(alpha: .15),

          child: Icon(Icons.payment, color: color),
        ),

        title: const Text(
          'School Fee',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        subtitle: Text(paid ? 'Paid' : 'Pending payment'),

        trailing: Text(
          '$amount',
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
