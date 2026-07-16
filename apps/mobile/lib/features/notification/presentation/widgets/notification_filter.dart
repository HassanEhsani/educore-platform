import 'package:flutter/material.dart';

class NotificationFilter extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const NotificationFilter({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<int>(
      segments: const [
        ButtonSegment(value: 0, label: Text('All')),
        ButtonSegment(value: 1, label: Text('Unread')),
      ],
      selected: {selectedIndex},
      onSelectionChanged: (value) {
        onChanged(value.first);
      },
    );
  }
}
