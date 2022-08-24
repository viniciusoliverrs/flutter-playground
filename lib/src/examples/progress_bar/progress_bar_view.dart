import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProgressBarView(),
    );
  }
}

class ProgressBarView extends StatefulWidget {
  const ProgressBarView({Key? key}) : super(key: key);

  @override
  State<ProgressBarView> createState() => _ProgressBarViewState();
}

class _ProgressBarViewState extends State<ProgressBarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProgressBar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ProgressBar(
            value: 0.5,
            size: 10,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.value,
    required this.size,
    required this.color,
  }) : super(key: key);
  final double value;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _ProgressBarPainter(
          value: value,
          color: color,
        ),
      ),
    );
  }
}

class _ProgressBarPainter extends CustomPainter {
  _ProgressBarPainter({
    required this.value,
    required this.color,
  });
  final double value;
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.width
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width * value, size.height / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(_ProgressBarPainter oldDelegate) {
    return oldDelegate.value != value || oldDelegate.color != color;
  }
}

final Gradient gradient = LinearGradient(
  colors: <Color>[
    Colors.greenAccent.withOpacity(1.0),
    Colors.yellowAccent.withOpacity(1.0),
    Colors.redAccent.withOpacity(1.0),
  ],
  stops: const [
    0.0,
    0.5,
    1.0,
  ],
);

class CircularArc extends StatefulWidget {
  @override
  _CircularArcState createState() => _CircularArcState();
}

class _CircularArcState extends State<CircularArc>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animController;

  @override
  void initState() {
    super.initState();

    animController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    final curvedAnimation =
        CurvedAnimation(parent: animController, curve: Curves.easeInOutCubic);

    animation = Tween<double>(begin: 0.0, end: 3.14).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CustomPaint(
            size: const Size(300, 300),
            painter: ProgressArc(0, Colors.black54, true),
          ),
          CustomPaint(
            size: const Size(300, 300),
            painter: ProgressArc(animation.value, Colors.redAccent, false),
          ),
          Positioned(
              top: 120,
              left: 130,
              child: Text("${(animation.value / 3.14 * 100).round()}%",
                  style: const TextStyle(color: Colors.red, fontSize: 30)))
        ],
      ),
    );
  }
}

class ProgressArc extends CustomPainter {
  bool isBackground;
  double arc;
  Color progressColor;

  ProgressArc(this.arc, this.progressColor, this.isBackground);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = const Rect.fromLTRB(0, 0, 300, 300);
    const startAngle = -math.pi;
    final sweepAngle = arc ?? math.pi;
    const userCenter = false;
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    if (!isBackground) {
      paint.shader = gradient.createShader(rect);
    }
    canvas.drawArc(rect, startAngle, sweepAngle, userCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
