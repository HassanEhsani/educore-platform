import 'package:flutter/material.dart';

class ParentProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  final String relationship;

  const ParentProfileHeader({
    super.key,
    required this.name,
    required this.email,
    required this.relationship,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colors.primary, colors.primary.withValues(alpha: .75)],

          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

        borderRadius: BorderRadius.circular(24),
      ),

      child: Row(
        children: [
          Container(
            height: 75,
            width: 75,

            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),

            child: Icon(Icons.family_restroom, size: 40, color: colors.primary),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  name,

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(email, style: const TextStyle(color: Colors.white70)),

                const SizedBox(height: 8),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white24,

                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Text(
                    relationship,

                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
