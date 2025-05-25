import 'package:flutter/material.dart';
// math
import 'dart:math' as math;

class AnimatedBuilderWidgets extends StatefulWidget {
  const AnimatedBuilderWidgets({super.key});

  @override
  State<AnimatedBuilderWidgets> createState() => _AnimatedBuilderWidgetsState();
}

class _AnimatedBuilderWidgetsState extends State<AnimatedBuilderWidgets>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedBuilder Widgets"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: const FlutterLogo(
            size: 100,
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
