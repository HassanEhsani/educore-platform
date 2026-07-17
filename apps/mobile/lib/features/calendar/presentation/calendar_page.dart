import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_events.dart';
import 'widgets/calendar_header.dart';
import 'widgets/event_card.dart';
import 'widgets/event_filter.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calendar')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            const CalendarHeader(),

            const Gap(AppSpacing.lg),

            const EventFilter(),

            const Gap(AppSpacing.lg),

            Expanded(
              child: ListView.builder(
                itemCount: demoEvents.length,
                itemBuilder: (context, index) {
                  return EventCard(event: demoEvents[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
