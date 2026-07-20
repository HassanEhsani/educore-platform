// lib/features/admin/presentation/widgets/admin_business_card.dart

import 'package:flutter/material.dart';

class AdminBusinessCard extends StatelessWidget {
  const AdminBusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            _Item(title: 'Businesses', value: '3'),
            _Item(title: 'Users', value: '2450'),
            _Item(title: 'Revenue', value: '\$45K'),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String title;
  final String value;

  const _Item({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(title),
      ],
    );
  }
}
