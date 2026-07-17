import 'package:flutter/material.dart';

import '../../domain/message.dart';

class ConversationCard extends StatelessWidget {
  final Message message;

  const ConversationCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(message.sender.substring(0, 1))),
        title: Text(message.sender),
        subtitle: Text(
          message.preview,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message.time),
            if (message.unread)
              const Padding(
                padding: EdgeInsets.only(top: 6),
                child: CircleAvatar(radius: 5, backgroundColor: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
