import 'package:flutter/material.dart';

class ManagerAnnouncementsPage extends StatefulWidget {
  const ManagerAnnouncementsPage({super.key});

  @override
  State<ManagerAnnouncementsPage> createState() =>
      _ManagerAnnouncementsPageState();
}

class _ManagerAnnouncementsPageState extends State<ManagerAnnouncementsPage> {
  final titleController = TextEditingController();

  final messageController = TextEditingController();

  String selectedAudience = 'Everyone';

  final audiences = const ['Everyone', 'Teachers', 'Parents', 'Students'];

  @override
  void dispose() {
    titleController.dispose();
    messageController.dispose();

    super.dispose();
  }

  void publishAnnouncement() {
    if (titleController.text.trim().isEmpty ||
        messageController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please complete all fields')),
      );

      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Announcement sent to $selectedAudience')),
    );

    titleController.clear();
    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Announcements')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Create Announcement',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: titleController,

              decoration: const InputDecoration(
                labelText: 'Announcement Title',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              controller: messageController,

              maxLines: 5,

              decoration: const InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<String>(
              initialValue: selectedAudience,

              decoration: const InputDecoration(
                labelText: 'Send To',
                border: OutlineInputBorder(),
              ),

              items: audiences.map((audience) {
                return DropdownMenuItem(value: audience, child: Text(audience));
              }).toList(),

              onChanged: (value) {
                if (value == null) return;

                setState(() {
                  selectedAudience = value;
                });
              },
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,

              child: FilledButton.icon(
                icon: const Icon(Icons.campaign),

                label: const Text('Publish Announcement'),

                onPressed: publishAnnouncement,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
