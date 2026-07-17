import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_profile_data.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_info_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(profile: demoProfile),

            const Gap(AppSpacing.xl),

            ProfileInfoCard(
              icon: Icons.email,
              title: 'Email',
              value: demoProfile.email,
            ),

            ProfileInfoCard(
              icon: Icons.phone,
              title: 'Phone',
              value: demoProfile.phone,
            ),

            ProfileInfoCard(
              icon: Icons.school,
              title: 'School',
              value: demoProfile.school,
            ),
          ],
        ),
      ),
    );
  }
}
