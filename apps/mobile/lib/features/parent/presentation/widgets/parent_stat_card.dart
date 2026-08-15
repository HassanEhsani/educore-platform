import 'package:flutter/material.dart';

class ParentStatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const ParentStatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: 160,

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: colors.surface,

        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.06),

            blurRadius: 12,

            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 45,
            width: 45,

            decoration: BoxDecoration(
              color: colors.primary.withOpacity(.12),

              borderRadius: BorderRadius.circular(14),
            ),

            child: Icon(icon, color: colors.primary),
          ),

          const SizedBox(height: 14),

          Text(
            value,

            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 4),

          Text(title, style: TextStyle(color: Colors.grey.shade600)),
        ],
      ),
    );
  }
}
