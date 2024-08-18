import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ripple',
      home: Directionality(
        textDirection: TextDirection.ltr, // specify reading direction
        child: RipplesAnimation(),
      ),
    );
  }
}


class RipplesAnimation extends StatefulWidget {
  const RipplesAnimation({Key? key}) : super(key: key);

  @override
  State<RipplesAnimation> createState() => _RipplesAnimationState();
}


class _RipplesAnimationState extends State<RipplesAnimation>
    with SingleTickerProviderStateMixin {

  dynamic _animation;
  dynamic _animationController;
  dynamic _curve;
  var listRadius = [100.0,200.0, 300.0, 400.0, 500.0, 500.0, 600.0,700.0,800.0];
  @override
  void initState() {
    super.initState();


    _animationController =
    AnimationController(vsync: this, duration: const Duration(milliseconds: 2000),)
      ..repeat(reverse: false);

    _curve = CurvedAnimation(parent: _animationController, curve: Curves.easeInOutQuint);
    _animation = Tween(begin: 0.40, end: 0.50).animate(_curve);

    _animationController.addListener(() {
      setState(() {

      });
    });
    // _animationController.forward();

  }


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text("Ripple Effect"),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: listRadius.map((radius) =>

                Container(
                  width: radius * _animation.value,
                  height: radius * _animation.value,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(1.0 - _animation.value),
                  ),
                )).toList(),
          ),
        ),
      );
  }
}




// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner:false,
//       home: BoxTransform(),
//     );
//   }
// }
//
// class BoxTransform extends StatefulWidget {
//   const BoxTransform({Key? key}) : super(key: key);
//
//   @override
//   State<BoxTransform> createState() => _BoxTransformState();
// }
//
// class _BoxTransformState extends State<BoxTransform>
//     with SingleTickerProviderStateMixin {
//   AnimationController? controller;
//   Animation<double>? sizeAnimation;
//   Animation<double>? sizeAnimation2;
//   Animation<double>? sizeAnimation3;
//   Animation<double>? sizeAnimation4;
//   Animation<double>? sizeAnimation5;
//   Animation<double>? sizeAnimation6;
//   dynamic radiusAnimation = 0;
//
//   @override
//
//   void initState() {
//     super.initState();
//
//     controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     )..repeat(reverse: true);
//
//     final curvedAnimation = CurvedAnimation(
//       parent: controller!,
//       curve: Curves.ease,
//     );
//
//     // const delay = Duration(milliseconds: 200); // Delay between each container animation
//
//     sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
//       TweenSequenceItem<double>(
//         tween: Tween<double>(begin: 240, end: 110),
//         weight: 50,
//       ),
//     ]
//     ).animate(
//         CurvedAnimation(
//           parent: controller!,
//           curve: const Interval(0.35, 0.45),
//         )// Delayed start for the fifth container
//     );
//
//     sizeAnimation2 = TweenSequence(<TweenSequenceItem<double>>[
//       TweenSequenceItem<double>(
//         tween: Tween<double>(begin: 200, end: 130),
//         weight: 50,
//       ),
//     ]
//     ).animate(
//         CurvedAnimation(
//           parent: controller!,
//           curve: const Interval(0.30, 0.40),
//         )// Delayed start for the fifth container
//     );
//
//     sizeAnimation3 = TweenSequence(<TweenSequenceItem<double>>[
//       TweenSequenceItem<double>(
//         tween: Tween<double>(begin: 160, end: 190),
//         weight: 50,
//       ),
//     ]
//     ).animate(
//         CurvedAnimation(
//           parent: controller!,
//           curve: const Interval(0.25, 0.35),
//         )// Delayed start for the fifth container
//     );
//
//     sizeAnimation4 = TweenSequence(<TweenSequenceItem<double>>[
//       TweenSequenceItem<double>(
//         tween: Tween<double>(begin: 120, end: 150),
//         weight: 50,
//       ),
//     ]
//     ).animate(
//         CurvedAnimation(
//           parent: controller!,
//           curve: const Interval(0.20, 0.30),
//         )// Delayed start for the fifth container
//     );
//
//     sizeAnimation5 = TweenSequence(<TweenSequenceItem<double>>[
//     TweenSequenceItem<double>(
//     tween: Tween<double>(begin: 80, end: 110),
//     weight: 50,
//     ),
//     ]
//     ).animate(
//         CurvedAnimation(
//           parent: controller!,
//           curve: const Interval(0.15, 0.25),
//         )// Delayed start for the fifth container
//         );
//
//     sizeAnimation6 = TweenSequence(<TweenSequenceItem<double>>[
//       TweenSequenceItem<double>(
//         tween: Tween<double>(begin: 40, end: 70),
//         weight: 50,
//       ),
//     ]
//     ).animate(
//         CurvedAnimation(
//           parent: controller!,
//           curve: const Interval(0.10, 0.20),
//         )// Delayed start for the fifth container
//     );
//
//     radiusAnimation = BorderRadiusTween(
//       begin: BorderRadius.circular(120),
//       end: BorderRadius.circular(120),
//     ).animate(curvedAnimation);
//   }
//
//
//   @override
//   void dispose() {
//     controller?.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child: AnimatedBuilder(
//             animation: controller!,
//             builder: (context, child) =>
//                 Stack(alignment: Alignment.center, children: [
//                   Container(
//                     width: sizeAnimation!.value,
//                     height: sizeAnimation!.value,
//                     decoration: BoxDecoration(
//                       color: Colors.black12,
//                       borderRadius: radiusAnimation.value,
//                     ),
//                   ),
//                   Container(
//                     width: sizeAnimation2!.value,
//                     height: sizeAnimation2!.value,
//                     decoration: BoxDecoration(
//                       color: Colors.black26,
//                       borderRadius: radiusAnimation.value,
//                     ),
//                   ),
//                   Container(
//                     width: sizeAnimation3!.value,
//                     height: sizeAnimation3!.value,
//                     decoration: BoxDecoration(
//                       color: Colors.black38,
//                       borderRadius: radiusAnimation.value,
//                     ),
//                   ),
//                   Container(
//                     width: sizeAnimation4!.value,
//                     height: sizeAnimation4!.value,
//                     decoration: BoxDecoration(
//                       color: Colors.black45,
//                       borderRadius: radiusAnimation.value,
//                     ),
//                   ),
//                   Container(
//                     width: sizeAnimation5!.value,
//                     height: sizeAnimation5!.value,
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: radiusAnimation.value,
//                     ),
//                   ),
//                   Container(
//                     width: sizeAnimation6!.value,
//                     height: sizeAnimation6!.value,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: radiusAnimation.value,
//                     ),
//                   ),
//                 ]),
//           ),
//         ));
//     }
// }

