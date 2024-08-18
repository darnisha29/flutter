import 'package:chainedtween/sandbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
//jalde karne
void main() {
  runApp( MaterialApp(home: Scaffold(body:MyApp())));
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Home();
//   }
// }
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
//
// bool isFav = false;
// late AnimationController _controller;
// late Animation<Color?> _colorAnimation;
// late Animation<double> _sizeAnimation;
// late CurvedAnimation _curve;
// // late ColorTween _colorAnimation;
//
// @override
// void initState() {
// super.initState();
//
// _controller = AnimationController(
// duration: Duration(milliseconds: 200),
// vsync: this,
// );
//
// _curve = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);
//
// _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red).animate(_curve);
//
// _sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
// TweenSequenceItem<double>(
// tween: Tween<double>(begin: 100, end: 250),
// weight: 50,
// ),
// TweenSequenceItem<double>(
// tween: Tween<double>(begin: 100, end: 250),
// weight: 50,
// ),
// ]).animate(_curve);
//
// _controller.addStatusListener((status) {
// if (status == AnimationStatus.completed) {
// setState(() {
// isFav = true;
// });
// }
// if (status == AnimationStatus.dismissed) {
// setState(() {
// isFav = false;
// });
// }
// });
// }
//
// // dismiss the animation when widgit exits screen
// @override
// void dispose() {
// super.dispose();
// _controller.dispose();
// }
//
// @override
// Widget build(BuildContext context) {
// return AnimatedBuilder(
// animation: _controller,
// builder: (BuildContext context, _) {
//
//
// return Scaffold(
//   body:Center(
//     child: Container(
//       height: ,
//     ),
//   ),
// );
//
//
//
// //   IconButton(
// // icon: Icon(
// // Icons.favorite,
// // color: _colorAnimation.value,
// // size: _sizeAnimation.value,
// // ),
// // onPressed: () {
// // isFav ? _controller.reverse() : _controller.forward();
// // },
// // );
// });
// }
//
//
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LowLevelAnimationExample() ;
  }
}

// import 'package:flutter/material.dart';

class LowLevelAnimationExample extends StatefulWidget {
  const LowLevelAnimationExample({super.key});

  @override
  _LowLevelAnimationExampleState createState() =>
      _LowLevelAnimationExampleState();
}

// Define the State as with SingleTickerProviderStateMixin to be able to set
// `vsync=this`.
class _LowLevelAnimationExampleState extends State<LowLevelAnimationExample>
    with SingleTickerProviderStateMixin {
  // An Animation object knows the current state of an animation (for example,
  // whether it’s started, stopped, or moving forward or in reverse), but
  // doesn’t know anything about what appears onscreen.
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;
  // Both AnimationController and CurvedAnimation extends Animation<double>,
  // but add additional methods
  // An AnimationController manages the Animation.
  late AnimationController _controller;
  // A CurvedAnimation defines progression as a non-linear curve.
  late CurvedAnimation _curve;

  @override
  void initState() {
    super.initState();
    this._controller = AnimationController(
      duration: const Duration(seconds: 1),
      // Setting vsync prevents offscreen animations from consuming
      // unnecessary resources, `this` has SingleTickerProviderStateMixin.
      vsync: this,
    );
    this._curve =
        CurvedAnimation(parent: this._controller, curve: Curves.easeIn);
    // A Tween interpolates between the range of data.
    this._sizeAnimation =
        Tween<double>(begin: 50, end: 100).animate(this._curve);
    this._colorAnimation =
        ColorTween(begin: Colors.transparent, end: Colors.red)
            .animate(this._curve);
    // With addListener(), a listener function is called whenever the value of
    // the animation changes, e.g. call setState() to cause a rebuild.
    this._controller.addListener(() => setState(() {}));
  }
  @override
  void dispose() {
    super.dispose();
    // Dispose controller to release resources.
    this._controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Center(child:Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(8.0),
          color: this._colorAnimation.value,
          height: this._sizeAnimation.value,
          width: this._sizeAnimation.value,

        ),
        ElevatedButton(
          onPressed:
          this._controller.isCompleted ? null : () => _controller.forward(),
          child: const Text('Forward animation'),
        ),
        ElevatedButton(
          onPressed:
          this._controller.isDismissed ? null : () => _controller.reverse(),
          child: const Text('Reverse animation'),
        ),
        ElevatedButton(
          onPressed: () {
            // Use addStatusListener() for notifications of changes to the
            // animation’s state, such as starting, stopping, or reversing
            // direction.
            this._controller.addStatusListener((status) {
              if (status == AnimationStatus.completed) {
                this._controller.reverse();
              } else if (status == AnimationStatus.dismissed) {
                this._controller.forward();
              }
            });
            this._controller.forward();
          },
          child: const Text('Loop animation'),
        ),

      ],
    )));
  }
}

// void main() {6
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Trips',
//       home: sandbox(),
//     );
//   }
// }
