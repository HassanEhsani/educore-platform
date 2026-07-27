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
      borderRadius: BorderRadius.circular(20),

      onTap: onTap,

      child: Container(
        padding: const EdgeInsets.all(18),

        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,

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
          children: [
            Container(
              height: 52,

              width: 52,

              decoration: BoxDecoration(
                color: colorScheme.primary.withOpacity(.12),

                borderRadius: BorderRadius.circular(16),
              ),

              child: Icon(icon, color: colorScheme.primary),
            ),

            const SizedBox(height: 12),

            Text(
              title,

              textAlign: TextAlign.center,

              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
