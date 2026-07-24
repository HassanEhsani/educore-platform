import 'package:flutter/material.dart';

class ManagerGradesPage extends StatefulWidget {
  const ManagerGradesPage({super.key});

  @override
  State<ManagerGradesPage> createState() => _ManagerGradesPageState();
}

class _ManagerGradesPageState extends State<ManagerGradesPage> {
  String selectedClass = 'Grade 10';

  String selectedSubject = 'Mathematics';

  final Map<String, TextEditingController> gradeControllers = {
    'Ali Ahmad': TextEditingController(text: '18'),
    'Sara Khan': TextEditingController(text: '20'),
    'Omid Rahimi': TextEditingController(text: '15'),
    'Fatima Noor': TextEditingController(text: '19'),
  };

  @override
  void dispose() {
    for (final controller in gradeControllers.values) {
      controller.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grades')),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Grade Management',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<String>(
              initialValue: selectedClass,

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

            DropdownButtonFormField<String>(
              initialValue: selectedSubject,

              decoration: const InputDecoration(
                labelText: 'Select Subject',
                border: OutlineInputBorder(),
              ),

              items: const [
                DropdownMenuItem(
                  value: 'Mathematics',
                  child: Text('Mathematics'),
                ),
                DropdownMenuItem(value: 'English', child: Text('English')),
                DropdownMenuItem(value: 'Physics', child: Text('Physics')),
              ],

              onChanged: (value) {
                if (value == null) return;

                setState(() {
                  selectedSubject = value;
                });
              },
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
              child: ListView(
                children: gradeControllers.entries.map((entry) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),

                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              entry.key,

                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 90,

                            child: TextField(
                              controller: entry.value,

                              keyboardType: TextInputType.number,

                              decoration: const InputDecoration(
                                labelText: 'Grade',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            SizedBox(
              width: double.infinity,

              child: FilledButton.icon(
                icon: const Icon(Icons.save),

                label: const Text('Save Grades'),

                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Grades saved successfully')),
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
