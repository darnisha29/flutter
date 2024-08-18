import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: Text(
          text,
          style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        tween: Tween<double>(begin:0,end:1),
        duration: Duration(milliseconds: 500),
         builder: (context, double val ,  child){
          return Opacity(opacity: val,
          child:Padding(
            padding: EdgeInsets.only(top: val*20),
            child: child,
          ),
          );
         },
    );
  }
}
