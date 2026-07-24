import 'package:flutter/material.dart';

class ManagerStudentsPage extends StatefulWidget {
  const ManagerStudentsPage({super.key});

  @override
  State<ManagerStudentsPage> createState() => _ManagerStudentsPageState();
}

class _ManagerStudentsPageState extends State<ManagerStudentsPage> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> students = [
    {
      'name': 'Ali Ahmad',
      'grade': 'Grade 10',
      'phone': '0700000000',
      'status': 'Active',
    },
    {
      'name': 'Sara Khan',
      'grade': 'Grade 8',
      'phone': '0700000001',
      'status': 'Active',
    },
    {
      'name': 'Omid Rahimi',
      'grade': 'Grade 12',
      'phone': '0700000002',
      'status': 'Inactive',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Students')),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _showAddStudentDialog(context);
        },
        icon: const Icon(Icons.person_add),
        label: const Text('Add Student'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Student Management',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(
              '${students.length} students registered',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 20),

            TextField(
              controller: searchController,

              decoration: InputDecoration(
                hintText: 'Search students',

                prefixIcon: const Icon(Icons.search),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: students.length,

                itemBuilder: (context, index) {
                  final student = students[index];

                  return Card(
                    elevation: 0,

                    margin: const EdgeInsets.only(bottom: 12),

                    child: ListTile(
                      leading: CircleAvatar(child: Text(student['name']![0])),

                      title: Text(
                        student['name']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),

                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(student['grade']!),

                          Text(student['phone']!),
                        ],
                      ),

                      trailing: Chip(label: Text(student['status']!)),
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

  void _showAddStudentDialog(BuildContext context) {
    showDialog(
      context: context,

      builder: (context) {
        return AlertDialog(
          title: const Text('Add Student'),

          content: const Text(
            'Student creation form will be implemented here.',
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
