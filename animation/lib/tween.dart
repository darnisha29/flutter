import 'dart:math';

import 'package:flutter/material.dart';

/// Flutter code sample for [TweenAnimationBuilder].

void main() => runApp(MaterialApp(
  // debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Heartt(),
      ),
    ),);

class Heartt extends StatefulWidget {
  @override
  _HearttState createState() => _HearttState();
}

class _HearttState extends State<Heartt> with SingleTickerProviderStateMixin {
  bool isFav = false;
   dynamic _controller;
   dynamic _colorAnimation;
   dynamic _sizeAnimation;
   dynamic _border;
   dynamic _curve;

  // late ColorTween _colorAnimation;
  @override
  void initState() {
    super.initState();


    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    )..repeat(reverse: true);

    _curve = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

    _colorAnimation =
        ColorTween(begin: Colors.green, end: Colors.red).animate(_curve!);
    _sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 250, end: 150),
        weight: 50,
      ),
      // TweenSequenceItem<double>(
      //   tween: Tween<double>(begin: 50, end: 30),
      //   weight: 50,
      // ),
      // TweenSequenceItem<double>(
      //   tween: Tween<double>(begin: 50, end: 30),
      //   weight: 50,
      // ),
    ]).animate(_curve!);
    _border = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0, end: 250),
        weight: 50,
      ),
    ]).animate(_curve!);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });
  }

  // dismiss the animation when widgit exits screen
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, _) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: _sizeAnimation.value,
                  width: _sizeAnimation.value,
                  decoration: BoxDecoration(
                      color: _colorAnimation!.value,
                      borderRadius: BorderRadius.circular(_border.value)),

                  //   onPressed: () {
                  //     isFav ? _controller.reverse() : _controller.forward();
                  //   },
                  // );
                ),
                const SizedBox(
                  height: 300.0,
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     isFav ? _controller.reverse() : _controller.forward();
                //   },
                //   child: Text("    "),
                // ),
              ],
            ),
          );
        });
  }
}

// class TweenAnimationApp extends StatelessWidget {
//
//     Tween<double> _scaleTween = Tween<double>(begin: 0, end: 15);
//       ColorTween _color =  ColorTween(begin: Colors.blue, end: Colors.amber);
//    // TweenAnimationApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Animation',
//       home: Scaffold(
//         body: Center(
//           child: TweenAnimationBuilder(
//             tween: _scaleTween,
//             duration: Duration(seconds: 600),
//             builder: (context,scale,child){
//               return Transform.scale(scale: scale, child: child,);
//             },
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.blue,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//
// }

// class TweenAnimationBuilderExampleApp extends StatelessWidget {
//   const TweenAnimationBuilderExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('TweenAnimationBuilder Sample')),
//         body: const Center(
//           child: TweenAnimationBuilderExample(),
//         ),
//       ),
//     );
//   }
// }
//
// class TweenAnimationBuilderExample extends StatefulWidget {
//   const TweenAnimationBuilderExample({super.key});
//
//   @override
//   State<TweenAnimationBuilderExample> createState() =>
//       _TweenAnimationBuilderExampleState();
// }
//
// class _TweenAnimationBuilderExampleState
//     extends State<TweenAnimationBuilderExample> {
//   double end = 50;
//   double start = 50;
//   double _width = 100;
//   double _height = 100;
//   Color _color = Colors.green;
//   Color startcolor = Colors.blue;
//   Color endcolor = Colors.red;
//
//   BorderRadiusGeometry _borderRadius = BorderRadius.circular(50);
//   String shape = "circle";
//   @override
//   Widget build(BuildContext context) {
//     return TweenAnimationBuilder<double>(
//       tween: Tween<double>(begin: 0, end: end),
//
//       duration: const Duration(seconds: 1),
//       builder: (BuildContext context, double border, Widget? child) {
//         return Column(
//             children: [
//               Container(
//
//                   width: _width,
//                   height: _height,
//                   decoration: BoxDecoration(
//                     color: _color,
//                     borderRadius: BorderRadius.circular(border),
//
//                   )),
//               //icon nai levanu ad-kham ne yaar ghadik karva de ne ok
//               IconButton(
//                 iconSize: 50,
//                 color: Colors.blue,
//                 icon: child!,
//                 onPressed: () {
//                   setState(() {
//                     final random = Random();
//                     _width = random.nextInt(400).toDouble();
//                     _height = random.nextInt(400).toDouble();
//                     _height = 250;
//                     if(end==0){
//                       // if(startcolor==Colors.blue){
//                       //   startcolor=Colors.red;
//                       // }
//                       end=50;
//
//                     }
//                     else if(end==50){
//                       end=0;
//                     }
// // end = end==0?50:0;
//                     _color = Color.fromRGBO(
//                         random.nextInt(256),
//                         random.nextInt(256),
//                     random.nextInt(256),
//                     1,);
//                   });
//                 },
//               )
//             ],
//           );
//
//
//       },
//       child: const Icon(Icons.aspect_ratio),
//     );
//   }
// }
