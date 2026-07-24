import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../providers/manager_settings_provider.dart';

import '../widgets/profile_card.dart';
import '../widgets/about_school_card.dart';
import '../widgets/account_settings_card.dart';
import '../widgets/security_settings_card.dart';
import '../widgets/notification_settings_card.dart';
import '../widgets/language_settings_card.dart';
import '../widgets/theme_settings_card.dart';

class ManagerSettingsPage extends ConsumerWidget {
  const ManagerSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsState = ref.watch(managerSettingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manager Settings'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),

          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/manager');
            }
          },
        ),
      ),

      body: settingsState.when(
        loading: () => const Center(child: CircularProgressIndicator()),

        error: (error, stackTrace) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24),

              child: Column(
                mainAxisSize: MainAxisSize.min,

                children: [
                  const Icon(Icons.error_outline, size: 48),

                  const Gap(16),

                  Text(error.toString(), textAlign: TextAlign.center),

                  const Gap(16),

                  FilledButton(
                    onPressed: () {
                      ref.invalidate(managerSettingsProvider);
                    },

                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        },

        data: (settings) {
          debugPrint('Manager Settings Loaded: ${settings.managerName}');

          debugPrint('Email: ${settings.email}');

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                ProfileCard(settings: settings),

                const Gap(20),

                AboutSchoolCard(settings: settings),

                const Gap(20),

                AccountSettingsCard(settings: settings),

                const Gap(20),

                SecuritySettingsCard(settings: settings),

                const Gap(20),

                NotificationSettingsCard(settings: settings),

                const Gap(20),

                LanguageSettingsCard(settings: settings),

                const Gap(20),

                const ThemeSettingsCard(),
              ],
            ),
          );
        },
      ),
    );
  }
}
