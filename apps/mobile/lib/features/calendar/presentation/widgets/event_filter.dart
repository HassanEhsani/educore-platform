import 'package:flutter/material.dart';

class EventFilter extends StatelessWidget {
  const EventFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: 'All',
      decoration: const InputDecoration(
        labelText: 'Filter',
        border: OutlineInputBorder(),
      ),
      items: const [
        DropdownMenuItem(value: 'All', child: Text('All')),
        DropdownMenuItem(value: 'Today', child: Text('Today')),
        DropdownMenuItem(value: 'This Week', child: Text('This Week')),
      ],
      onChanged: (_) {},
    );
  }
}
