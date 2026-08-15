import 'package:flutter/material.dart';

class AuthBranding extends StatefulWidget {
  const AuthBranding({super.key});

  @override
  State<AuthBranding> createState() => _AuthBrandingState();
}

class _AuthBrandingState extends State<AuthBranding>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  late final Animation<double> _titleOpacity;
  late final Animation<Offset> _titleSlide;

  late final Animation<double> _cardOpacity;
  late final Animation<Offset> _cardSlide;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..forward();

    _titleOpacity = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.30, curve: Curves.easeOut),
    );

    _titleSlide = Tween<Offset>(begin: const Offset(0, -0.20), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.0, 0.30, curve: Curves.easeOutCubic),
          ),
        );

    _cardOpacity = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.15, 0.75, curve: Curves.easeOut),
    );

    _cardSlide = Tween<Offset>(begin: const Offset(0, 0.10), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.15, 0.75, curve: Curves.easeOutCubic),
          ),
        );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Column(
      children: [
        FadeTransition(
          opacity: _titleOpacity,
          child: SlideTransition(
            position: _titleSlide,
            child: Text(
              'EduCore',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w900,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ),

        const SizedBox(height: 22),

        FadeTransition(
          opacity: _cardOpacity,
          child: SlideTransition(
            position: _cardSlide,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colors.primary,
                    colors.primary.withValues(alpha: 0.78),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: colors.primary.withValues(alpha: 0.30),
                    blurRadius: 35,
                    spreadRadius: 2,
                    offset: const Offset(0, 18),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Icon(Icons.school_rounded, size: 72, color: Colors.white),

                  SizedBox(height: 22),

                  Text(
                    'Education Management',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Smart solutions for modern education',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(height: 24),
      ],
    );
  }
}
