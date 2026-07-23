import 'package:flutter/material.dart';

enum BusinessType { school, isp, laboratory }

enum BusinessStatus { active, inactive, maintenance }

class BusinessSummary {
  final String id;

  final String name;

  final BusinessType type;

  final double monthlyRevenue;

  final double monthlyExpenses;

  final double netProfit;

  final int customers;

  final BusinessStatus status;

  const BusinessSummary({
    required this.id,
    required this.name,
    required this.type,
    required this.monthlyRevenue,
    required this.monthlyExpenses,
    required this.netProfit,
    required this.customers,
    required this.status,
  });

  String get typeName {
    switch (type) {
      case BusinessType.school:
        return 'School';

      case BusinessType.isp:
        return 'ISP';

      case BusinessType.laboratory:
        return 'Laboratory';
    }
  }

  String get statusName {
    switch (status) {
      case BusinessStatus.active:
        return 'Active';

      case BusinessStatus.inactive:
        return 'Inactive';

      case BusinessStatus.maintenance:
        return 'Maintenance';
    }
  }

  IconData get icon {
    switch (type) {
      case BusinessType.school:
        return Icons.school_outlined;

      case BusinessType.isp:
        return Icons.language_outlined;

      case BusinessType.laboratory:
        return Icons.biotech_outlined;
    }
  }

  bool get isActive {
    return status == BusinessStatus.active;
  }
}
