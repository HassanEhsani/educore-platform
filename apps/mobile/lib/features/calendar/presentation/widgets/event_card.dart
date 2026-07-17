import 'package:flutter/material.dart';

import '../../domain/event.dart';

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.event),
        title: Text(event.title),
        subtitle: Text('${event.date}\n${event.time}\n${event.location}'),
        isThreeLine: true,
      ),
    );
  }
}
