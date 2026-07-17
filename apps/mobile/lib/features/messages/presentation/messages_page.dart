import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_messages.dart';
import 'widgets/conversation_card.dart';
import 'widgets/message_search_bar.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            const MessageSearchBar(),

            const Gap(AppSpacing.lg),

            Expanded(
              child: ListView.builder(
                itemCount: demoMessages.length,
                itemBuilder: (context, index) {
                  return ConversationCard(message: demoMessages[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
