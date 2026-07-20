import 'package:flutter/material.dart';

class AdminSystemHealthCard extends StatelessWidget {
  final double uptime;

  const AdminSystemHealthCard({super.key, required this.uptime});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),

      child: ListTile(
        contentPadding: const EdgeInsets.all(18),

        leading: const CircleAvatar(child: Icon(Icons.cloud_done)),

        title: const Text('System Health'),

        subtitle: Text('${uptime.toStringAsFixed(1)}% uptime'),
      ),
    );
  }
}
