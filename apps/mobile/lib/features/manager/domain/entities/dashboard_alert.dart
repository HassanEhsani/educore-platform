import 'package:flutter/material.dart';

class DashboardAlert {
  final String title;
  final String message;
  final AlertType type;
  final IconData icon;

  const DashboardAlert({
    required this.title,
    required this.message,
    required this.type,
    required this.icon,
  });
}

enum AlertType { warning, success, info, error }
