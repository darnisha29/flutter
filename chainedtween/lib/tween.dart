import 'package:flutter/material.dart';

/// Flutter code sample for [TweenAnimationBuilder].

void main() => runApp(const TweenAnimationBuilderExampleApp());

class TweenAnimationBuilderExampleApp extends StatelessWidget {
  const TweenAnimationBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TweenAnimationBuilder Sample')),
        body: const Center(
          child: TweenAnimationBuilderExample(),
        ),
      ),
    );
  }
}

class TweenAnimationBuilderExample extends StatefulWidget {
  const TweenAnimationBuilderExample({super.key});

  @override
  State<TweenAnimationBuilderExample> createState() =>
      _TweenAnimationBuilderExampleState();
}

class _TweenAnimationBuilderExampleState
    extends State<TweenAnimationBuilderExample> {
  double end = 50;
  double start = 50;
  double _width = 100;
  double _height = 100;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(50);
  String shape = "circle";
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: end),

      duration: const Duration(seconds: 1),
      builder: (BuildContext context, double border, Widget? child) {
        return TweenAnimationBuilder(
          tween: ColorTween(begin: startcol, end: endcol),
          duration: const Duration(seconds: 1),

          builder: (BuildContext context, Object? value, Widget? child) {  return Column(
            children: [
              Container(

                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                    color: _color,
                    borderRadius: BorderRadius.circular(border),

                  )),
              IconButton(
                iconSize: 50,
                color: Colors.blue,
                icon: child!,
                onPressed: () {
                  setState(() {
                    if(end==0){
                      end=50;

                    }
                    else if(end==50){
                      end=0;
                    }
// end = end==0?50:0;
                  });
                },
              )
            ],
          );
          },
        );
      },
      child: const Icon(Icons.aspect_ratio),
    );
  }
}