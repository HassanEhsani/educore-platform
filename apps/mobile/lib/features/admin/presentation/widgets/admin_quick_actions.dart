import 'package:flutter/material.dart';

class AdminQuickActions extends StatelessWidget {
  const AdminQuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Quick Actions',

              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            Wrap(
              spacing: 12,

              runSpacing: 12,

              children: [
                _button(Icons.add_business, 'Add Business'),

                _button(Icons.people, 'Users'),

                _button(Icons.analytics, 'Reports'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _button(IconData icon, String title) {
    return ActionChip(
      avatar: Icon(icon, size: 18),

      label: Text(title),

      onPressed: () {},
    );
  }
}
