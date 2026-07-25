import 'dart:math';

import 'package:flutter/material.dart';

class StudentProgressCircle extends StatelessWidget {
  final double percentage;

  const StudentProgressCircle({super.key, required this.percentage});

  Color get progressColor {
    if (percentage >= 60) {
      return Colors.green;
    }

    if (percentage >= 40) {
      return Colors.orange;
    }

    return Colors.red;
  }

  String get statusText {
    if (percentage >= 60) {
      return 'Passed';
    }

    if (percentage >= 40) {
      return 'Needs Effort';
    }

    return 'Critical';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,

      child: Stack(
        alignment: Alignment.center,

        children: [
          CustomPaint(
            size: const Size(180, 180),

            painter: _ProgressPainter(
              percentage: percentage,
              color: progressColor,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                '${percentage.toInt()}%',
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                statusText,
                style: TextStyle(
                  color: progressColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProgressPainter extends CustomPainter {
  final double percentage;
  final Color color;

  _ProgressPainter({required this.percentage, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final radius = size.width / 2;

    final backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke
      ..strokeWidth = 14;

    final progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 14
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius - 10, backgroundPaint);

    final sweepAngle = 2 * pi * (percentage / 100);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - 10),

      -pi / 2,

      sweepAngle,

      false,

      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _ProgressPainter oldDelegate) {
    return oldDelegate.percentage != percentage;
  }
}
