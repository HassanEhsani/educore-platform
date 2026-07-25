import 'dart:math';

import 'package:flutter/material.dart';

class StudentProgressCircle extends StatelessWidget {
  final double percentage;

  final double size;

  const StudentProgressCircle({
    super.key,

    required this.percentage,

    this.size = 180,
  });

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
      return 'Effort';
    }

    return 'Critical';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,

      height: size,

      child: Stack(
        alignment: Alignment.center,

        children: [
          CustomPaint(
            size: Size(size, size),

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

                style: TextStyle(
                  fontSize: size * 0.20,

                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                statusText,

                style: TextStyle(
                  color: progressColor,

                  fontSize: size * 0.09,

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

    final strokeWidth = size.width * 0.08;

    final backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final circleRadius = radius - strokeWidth;

    canvas.drawCircle(center, circleRadius, backgroundPaint);

    final sweepAngle = 2 * pi * (percentage / 100);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: circleRadius),

      -pi / 2,

      sweepAngle,

      false,

      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _ProgressPainter oldDelegate) {
    return oldDelegate.percentage != percentage || oldDelegate.color != color;
  }
}
