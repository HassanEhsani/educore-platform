import 'package:flutter/material.dart';

enum ManagerActivityType { student, teacher, payment, attendance, report }

class ManagerActivity {
  final String title;
  final String subtitle;
  final ManagerActivityType type;

  const ManagerActivity({
    required this.title,
    required this.subtitle,
    required this.type,
  });

  IconData get icon {
    switch (type) {
      case ManagerActivityType.student:
        return Icons.person_add;

      case ManagerActivityType.teacher:
        return Icons.school;

      case ManagerActivityType.payment:
        return Icons.payment;

      case ManagerActivityType.attendance:
        return Icons.check_circle;

      case ManagerActivityType.report:
        return Icons.analytics;
    }
  }
}
