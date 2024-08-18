import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class sandbox extends StatefulWidget {
  const sandbox({Key? key}) : super(key: key);

  @override
  State<sandbox> createState() => _sandboxState();
}

// ignore: camel_case_types
class _sandboxState extends State<sandbox> {
   double _margin = 0.0;
  double _opacity = 1.0;
   double _width = 200.0;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        duration: Duration(seconds: 1),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(onPressed: (){
             setState(() =>  _margin = 50);
            }, child:const Text("Margin"),),

            ElevatedButton(onPressed: (){
              setState(() =>  _width = 300);
            }, child:const Text("Width"),),

            ElevatedButton(onPressed: (){
              setState(() =>  _color = Colors.purpleAccent);
            }, child:const Text("Color"),),

            ElevatedButton(onPressed: (){
              setState(() =>  _opacity = 0.0);
            }, child:const Text("Opacity"),),
            SizedBox(
              height: 20,
            ),
            AnimatedOpacity(opacity: _opacity, duration: Duration(seconds: 1),
            child: Text("AnimatedOpacity",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
