import 'package:flutter/material.dart';

class ParentActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const ParentActionCard({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),

        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,

          borderRadius: BorderRadius.circular(18),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              height: 44,
              width: 44,

              decoration: BoxDecoration(
                color: colorScheme.primary.withValues(alpha: .12),

                borderRadius: BorderRadius.circular(14),
              ),

              child: Icon(icon, size: 26, color: colorScheme.primary),
            ),

            const SizedBox(height: 10),

            Text(
              title,
              textAlign: TextAlign.center,

              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
