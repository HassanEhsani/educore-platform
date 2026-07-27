import 'package:flutter/material.dart';

import '../../domain/parent.dart';

class ParentHeader extends StatelessWidget {
  final Parent parent;

  const ParentHeader({super.key, required this.parent});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorScheme.primary, colorScheme.primary.withOpacity(.75)],

          begin: Alignment.topLeft,

          end: Alignment.bottomRight,
        ),

        borderRadius: BorderRadius.circular(26),

        boxShadow: [
          BoxShadow(
            color: colorScheme.primary.withOpacity(.25),

            blurRadius: 25,

            offset: const Offset(0, 12),
          ),
        ],
      ),

      child: Row(
        children: [
          CircleAvatar(
            radius: 38,

            backgroundColor: Colors.white,

            child: Icon(
              Icons.family_restroom,

              size: 42,

              color: colorScheme.primary,
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  parent.name,

                  style: const TextStyle(
                    color: Colors.white,

                    fontSize: 22,

                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  '${parent.relationship} • ${parent.studentName}',

                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),

                const SizedBox(height: 4),

                Text(
                  '${parent.studentClass} | ${parent.studentNumber}',

                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),

                const SizedBox(height: 12),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,

                    vertical: 6,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white24,

                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Text(
                    'Attendance ${parent.attendance}%',

                    style: const TextStyle(
                      color: Colors.white,

                      fontSize: 12,

                      fontWeight: FontWeight.w600,
                    ),
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
