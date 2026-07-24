import 'package:flutter/material.dart';

class ManagerAttendancePage extends StatefulWidget {
  const ManagerAttendancePage({super.key});

  @override
  State<ManagerAttendancePage> createState() => _ManagerAttendancePageState();
}

class _ManagerAttendancePageState extends State<ManagerAttendancePage> {
  String selectedClass = 'Grade 10';

  final List<Map<String, dynamic>> students = [
    {'name': 'Ali Ahmad', 'present': true},
    {'name': 'Sara Khan', 'present': true},
    {'name': 'Omid Rahimi', 'present': false},
    {'name': 'Fatima Noor', 'present': true},
  ];

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Manage Student Attendance',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<String>(
              value: selectedClass,

              decoration: const InputDecoration(
                labelText: 'Select Class',
                border: OutlineInputBorder(),
              ),

              items: const [
                DropdownMenuItem(value: 'Grade 10', child: Text('Grade 10')),
                DropdownMenuItem(value: 'Grade 11', child: Text('Grade 11')),
                DropdownMenuItem(value: 'Grade 12', child: Text('Grade 12')),
              ],

              onChanged: (value) {
                if (value == null) return;

                setState(() {
                  selectedClass = value;
                });
              },
            ),

            const SizedBox(height: 16),

            Card(
              child: ListTile(
                leading: const Icon(Icons.calendar_today),

                title: const Text('Attendance Date'),

                subtitle: Text(
                  '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                ),

                trailing: IconButton(
                  icon: const Icon(Icons.edit),

                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,

                      initialDate: selectedDate,

                      firstDate: DateTime(2025),

                      lastDate: DateTime(2030),
                    );

                    if (date != null) {
                      setState(() {
                        selectedDate = date;
                      });
                    }
                  },
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Students',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: students.length,

                itemBuilder: (context, index) {
                  final student = students[index];

                  return Card(
                    child: SwitchListTile(
                      title: Text(student['name']),

                      subtitle: Text(student['present'] ? 'Present' : 'Absent'),

                      value: student['present'],

                      onChanged: (value) {
                        setState(() {
                          student['present'] = value;
                        });
                      },
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              width: double.infinity,

              child: FilledButton.icon(
                icon: const Icon(Icons.save),

                label: const Text('Save Attendance'),

                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Attendance saved successfully'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
