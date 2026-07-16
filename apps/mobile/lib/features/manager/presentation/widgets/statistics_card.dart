import 'package:flutter/material.dart';

class StatisticsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const StatisticsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Text(value, style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
