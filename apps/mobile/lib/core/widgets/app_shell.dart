import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  final String title;
  final Widget body;

  final int currentIndex;

  final ValueChanged<int> onTap;

  final List<NavigationDestination> destinations;

  final List<String> routes;

  const AppShell({
    super.key,
    required this.title,
    required this.body,
    required this.currentIndex,
    required this.onTap,
    required this.destinations,
    required this.routes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),

      body: SafeArea(child: body),

      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,

        destinations: destinations,

        onDestinationSelected: (index) {
          onTap(index);

          if (index < routes.length) {
            context.go(routes[index]);
          }
        },
      ),
    );
  }
}
