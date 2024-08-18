import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedBuilder].

void main() => runApp(const AnimatedBuilderExampleApp());

class AnimatedBuilderExampleApp extends StatelessWidget {
  const AnimatedBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedBuilderExample(),
    );
  }
}

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

/// AnimationControllers can be created with `vsync: this` because of
/// TickerProviderStateMixin.
class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with TickerProviderStateMixin {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(50);
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,

  )..repeat();
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        final random = Random();
//oooe pela circle pachi ractangle and then square evu banavanu
        // Generate a random width and height.
        _width = 250;
        _height = 250;

        // Generate a random color.
        _color = Color.fromRGBO(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          1,

        );

        // Generate a random border radius.
        _borderRadius =
            BorderRadius.circular(random.nextInt(50).toDouble());
      });
    });
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(

        width: _width,
        height: _height,
        decoration: BoxDecoration(
        color: _color,
        borderRadius: _borderRadius,


      ),),
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(scale: _controller.value+20,child: child,);
      },
    );
  }
}


akho pelethi lakh nakar confusion thase