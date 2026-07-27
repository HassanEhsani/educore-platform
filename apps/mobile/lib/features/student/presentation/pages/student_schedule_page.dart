import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudentSchedulePage extends StatelessWidget {
  const StudentSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final schedule = [
      {
        'day': 'Monday',
        'subject': 'Mathematics',
        'teacher': 'Mr. Ahmad',
        'time': '08:00 - 09:00',
        'room': 'Class 10A',
        'icon': Icons.calculate_outlined,
      },
      {
        'day': 'Monday',
        'subject': 'Physics',
        'teacher': 'Mrs. Sara',
        'time': '09:15 - 10:15',
        'room': 'Lab 2',
        'icon': Icons.science_outlined,
      },
      {
        'day': 'Tuesday',
        'subject': 'English',
        'teacher': 'Mr. David',
        'time': '08:00 - 09:00',
        'room': 'Class 10A',
        'icon': Icons.language_outlined,
      },
      {
        'day': 'Wednesday',
        'subject': 'Computer Science',
        'teacher': 'Mr. Hassan',
        'time': '10:30 - 11:30',
        'room': 'Computer Lab',
        'icon': Icons.computer_outlined,
      },
      {
        'day': 'Thursday',
        'subject': 'Chemistry',
        'teacher': 'Mrs. Fatima',
        'time': '09:15 - 10:15',
        'room': 'Lab 1',
        'icon': Icons.science,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/student');
            }
          },
        ),
        title: const Text('Class Schedule'),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),

        itemCount: schedule.length,

        itemBuilder: (context, index) {
          final item = schedule[index];

          return _ScheduleCard(
            day: item['day'] as String,
            subject: item['subject'] as String,
            teacher: item['teacher'] as String,
            time: item['time'] as String,
            room: item['room'] as String,
            icon: item['icon'] as IconData,
          );
        },
      ),
    );
  }
}

class _ScheduleCard extends StatelessWidget {
  final String day;
  final String subject;
  final String teacher;
  final String time;
  final String room;
  final IconData icon;

  const _ScheduleCard({
    required this.day,
    required this.subject,
    required this.teacher,
    required this.time,
    required this.room,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 14),

      elevation: 2,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          children: [
            CircleAvatar(
              radius: 24,

              backgroundColor: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.15),

              child: Icon(icon, color: Theme.of(context).colorScheme.primary),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    subject,

                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(day, style: Theme.of(context).textTheme.bodyMedium),

                  const SizedBox(height: 4),

                  Text(teacher, style: Theme.of(context).textTheme.bodyMedium),

                  const SizedBox(height: 4),

                  Text(
                    '$time • $room',

                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
