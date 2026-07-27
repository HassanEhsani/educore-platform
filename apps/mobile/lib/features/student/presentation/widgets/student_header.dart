import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../domain/student.dart';

class StudentHeader extends StatelessWidget {
  final Student student;

  const StudentHeader({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(AppSpacing.lg),

      decoration: BoxDecoration(
        color: colorScheme.primary,

        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          _buildAvatar(),

          const SizedBox(width: AppSpacing.lg),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  student.fullName,

                  style: AppTextStyles.headlineMedium.copyWith(
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  '${student.gradeLabel} • ${student.studentNumber}',

                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),

                const SizedBox(height: 8),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,

                    vertical: 4,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white24,

                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Text(
                    student.displayStatus,

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

  Widget _buildAvatar() {
    if (student.avatarUrl.isNotEmpty) {
      return CircleAvatar(
        radius: 34,

        backgroundImage: NetworkImage(student.avatarUrl),
      );
    }

    return CircleAvatar(
      radius: 34,

      backgroundColor: Colors.white,

      child: Text(
        student.initials,

        style: TextStyle(
          fontSize: 26,

          fontWeight: FontWeight.bold,

          color: Colors.blue.shade700,
        ),
      ),
    );
  }
}
