import 'package:flutter/material.dart';

class AdminGrowthCard extends StatelessWidget {
  final double growth;

  const AdminGrowthCard({super.key, required this.growth});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),

      child: ListTile(
        contentPadding: const EdgeInsets.all(18),

        leading: const CircleAvatar(child: Icon(Icons.trending_up)),

        title: const Text('User Growth'),

        subtitle: Text('+${growth.toStringAsFixed(1)}% this month'),
      ),
    );
  }
}
