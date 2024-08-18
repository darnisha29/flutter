// import 'package:flutter/material.dart';
//
// //function to trigger build
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GeeksForGeeks',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ), // ThemeData
//       home: const MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     ); // MaterialApp
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
// // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Text"),
//       ), // AppBar
//       // App body consists of single Row
//       // Row consists of three children widgets
//       body:OutlinedButton(
//         style: OutlinedButton.styleFrom(
//           shape: const StadiumBorder(),
//           side: const BorderSide(
//               width: 2,
//               color: Colors.red
//           ),
//         ),
//         onPressed: () { },
//         child: const Text('OutlinedButton with custom shape and border'),
//       )
//     );
//   }
// }


//popup

// import 'package:flutter/material.dart';
//
// // main method
// void main() {
// // runapp method run the our main app
//   runApp(const SimpleAppBarPopupMenuButton());
// }
//
// class SimpleAppBarPopupMenuButton extends StatelessWidget {
//   const SimpleAppBarPopupMenuButton({Key? key}) : super(key: key);
// // definition of the dialog
// // box when value is selected
//   void _showDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Alert!!"),
//           content: const Text("You are awesome!"),
//           actions: [
//             MaterialButton(
//               child: const Text("OK"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // MaterialApp with debugShowCheckedModeBanner
//     // false and title.
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'AppBar Popup Menu Button',
//       // scaffold with appbar
//       home: Scaffold(
//         // appbar with title text
//         appBar: AppBar(
//           title: const Text('AppBar Popup Menu Button'),
//           // in action widget we have PopupMenuButton
//           actions: [
//             PopupMenuButton<int>(
//               itemBuilder: (context) => [
//                 // PopupMenuItem 1
//                 PopupMenuItem(
//                   value: 1,
//                   // row with 2 children
//                   child: Row(
//                     children: const [
//                       Icon(Icons.star),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text("Get The App")
//                     ],
//                   ),
//                 ),
//                 // PopupMenuItem 2
//                 PopupMenuItem(
//                   value: 2,
//                   // row with two children
//                   child: Row(
//                     children: const [
//                       Icon(Icons.chrome_reader_mode),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text("About")
//                     ],
//                   ),
//                 ),
//               ],
//               offset: const Offset(0, 100),
//               color: Colors.grey,
//               elevation: 2,
//               // on selected we show the dialog box
//               onSelected: (value) {
//                 // if value 1 show dialog
//                 if (value == 1) {
//                   _showDialog(context);
//                   // if value 2 show dialog
//                 } else if (value == 2) {
//                   _showDialog(context);
//                 }
//               },
//             ),
//           ],
//         ),
//         // body with centered text
//         body: const Center(
//           child: Text("Press the 3 Point Button Up!"),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// /// main application widget
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Application';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }
//
// /// stateful widget that the main application instantiates
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// /// private State class that goes with MyStatefulWidget
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   bool isSwitched = false;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: <Widget>[
//           Switch(
//             value: isSwitched,
//             onChanged: (value) {
//               setState(() {
//                 isSwitched = value;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';
//
// class SliderTutorial extends StatefulWidget {
//   const SliderTutorial({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   // ignore: library_private_types_in_public_api
//   _SliderTutorialState createState() => _SliderTutorialState();
// }
//
// class _SliderTutorialState extends State<SliderTutorial> {
//   int age = 10;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Slider(
//             label: "Select Age",
//             value: age.toDouble(),
//             onChanged: (value) {
//               setState(() {
//                 age = value.toInt();
//               });
//             },
//             min: 5,
//             max: 100,
//           ),
//           Text(
//             "Your Age: $age",
//             style: const TextStyle(
//               fontSize: 32.0,
//             ),
//           ),
//         ],
//         ),
//     );
//   }
// }




















// Row(
//   mainAxisAlignment: MainAxisAlignment.start,
//   children: <Widget>[
//     SizedBox(
//       width: 200.0,
//       height:900.0,
//       child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             Container(
//               width: 160.0,
//               height: 50.0,
//         decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(0.0),
//         color: Colors.grey),
//             ),
//             Container(
//               width: 160.0,
//               height: 50.0,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(0.0),
//                   color: Colors.blue),
//             ),
//             Container(
//               width: 160.0,
//               height: 50.0,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(0.0),
//                   color: Colors.grey),
//             ),
//             Container(
//               width: 160.0,
//               height: 50.0,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(0.0),
//                   color: Colors.blue),
//             ),
//             Container(
//               width: 160.0,
//               height: 50.0,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(0.0),
//                   color: Colors.grey),
//             ),
//             Container(
//               width: 160.0,
//               height: 50.0,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(0.0),
//                   color: Colors.blue),
//             ),
//             Container(
//               width: 160.0,
//               height: 50.0,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(0.0),
//                   color: Colors.grey),
//             ),
//
//
//           ],
//       ),
//     ),
//
//     Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Container(
//             // margin: const EdgeInsets.fromLTRB(10,40,0,0),
//             child: const Text(
//               "blue"
//             ),
//
//           ),
//           Container(
//             // margin: const EdgeInsets.fromLTRB(10,80,0,0),
//             child: const Text(
//                 "blue"
//             ),
//
//           ),
//           Container(
//             // margin: const EdgeInsets.fromLTRB(10,120,0,0),
//             child: const Text(
//                 "blue"
//             ),
//
//           ),
//           Container(
//             // margin: const EdgeInsets.fromLTRB(10,160,0,0),
//             child: const Text(
//                 "blue"
//             ),
//
//           ),
//           Container(
//             // margin: const EdgeInsets.fromLTRB(10,200,0,0),
//             child: const Text(
//                 "blue"
//             ),
//
//           ),
//           Container(
//             // margin: const EdgeInsets.fromLTRB(10,20,0,0),
//             child: const Text(
//                 "blue"
//             ),
//
//           ),
//           Container(
//             // margin: const EdgeInsets.fromLTRB(10,160,0,0),
//             child: const Text(
//                 "blue"
//             ),
//
//           ),
//
//
//         ],
//       ),
//     ),
//   ],
// )


// Padding(
//   padding: const EdgeInsets.only(left: 0.0, top: 10),
//   child: Stack(
//     alignment: AlignmentDirectional.center,
//     children: <Widget>[
//       /** Positioned WIdget **/
//       Positioned(
//         left: 10,
//         top: 40.0,
//         child: Container(
//           width: 160.0,
//           height: 50.0,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(0.0),
//               color: Colors.green),
//           child: const Padding(
//             padding: EdgeInsets.all(8.0),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 220,
//         top: 60.0,
//         child: SizedBox(
//           width: 220.0,
//           height: 50.0,
//           child: Text("Green"),
//         ),
//       ),
//       Positioned(
//         left: 10,
//         top: 110.0,
//         child: Container(
//           width: 160.0,
//           height: 50.0,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(0.0),
//               color: Colors.yellow),
//           child: const Padding(
//             padding: EdgeInsets.all(8.0),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 220,
//         top: 130.0,
//         child: SizedBox(
//           width: 220.0,
//           height: 50.0,
//           child: Text("yellow"),
//         ),
//       ),
//       Positioned(
//         left: 10,
//         top: 190.0,
//         child: Container(
//           width: 160.0,
//           height: 50.0,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(0.0),
//               color: Colors.blue),
//           child: const Padding(
//             padding: EdgeInsets.all(8.0),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 220,
//         top: 200.0,
//         child: SizedBox(
//           width: 220.0,
//           height: 50.0,
//           child: Text("blue"),
//         ),
//       ),
//       Positioned(
//         left: 10,
//         top: 270.0,
//         child: Container(
//           width: 160.0,
//           height: 50.0,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(0.0),
//               color: Colors.red),
//           child: const Padding(
//             padding: EdgeInsets.all(8.0),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 220,
//         top: 285.0,
//         child: SizedBox(
//           width: 220.0,
//           height: 50.0,
//           child: Text("red"),
//         ),
//       ),
//       Positioned(
//         left: 10,
//         top: 350.0,
//         child: Container(
//           width: 160.0,
//           height: 50.0,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(0.0),
//               color: Colors.grey),
//           child: const Padding(
//             padding: EdgeInsets.all(8.0),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 220,
//         top: 370.0,
//         child: SizedBox(
//           width: 220.0,
//           height: 50.0,
//           child: Text("grey"),
//         ),
//       ),
//       Positioned(
//         left: 10,
//         top: 430.0,
//         child: Container(
//           width: 160.0,
//           height: 50.0,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(0.0),
//               color: Colors.orange),
//           child: const Padding(
//             padding: EdgeInsets.all(8.0),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 220,
//         top: 450.0,
//         child: SizedBox(
//           width: 220.0,
//           height: 50.0,
//           child: Text("orange"),
//         ),
//       ),
//       Positioned(
//         left: 10,
//         top: 510.0,
//         child: Container(
//           width: 160.0,
//           height: 50.0,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(0.0),
//               color: Colors.lime),
//           child: const Padding(
//             padding: EdgeInsets.all(8.0),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 220,
//         top: 520.0,
//         child: SizedBox(
//           width: 220.0,
//           height: 50.0,
//           child: Text("blue"),
//         ),
//       ),
//     ],
//   ),
// ),
// const SizedBox(
//   margin:EdgeInsets.all(24),
//   width: 200.0,
//   height: 100.0,
//   child: Card(
//     color: Colors.green,
//   //Center
//   ), //Card
// ),

//   Padding(
//   padding: EdgeInsets.only(left:0.0 ,top:10),
// child: Stack(
// alignment: AlignmentDirectional.center,
// children: <Widget>[
//
// /** Positioned WIdget **/
// Positioned(
//
//   left: 10,
// top: 530.0,
// child: Container(
//
//     width: 120.0,
//     height:120.0,
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(150), color: Colors.green),
//     child: const Padding(
//       padding: EdgeInsets.all(8.0),
//     ),
//
// ),
// ),
//   Positioned(
//
//     left: 135,
//     top: 260.0,
//
//     child: Container(
//
//       width: 120.0,
//       height:120.0,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(150), color: Colors.green),
//       child: const Padding(
//         padding: EdgeInsets.all(8.0),
//       ),
//
//     ),
//   ),
//   Positioned(
//
//     left: 270,
//     top: 10.0,
//
//     child: Container(
//
//       width: 120.0,
//       height:120.0,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(150), color: Colors.green),
//       child: const Padding(
//         padding: EdgeInsets.all(8.0),
//       ),
//
//     ),
//   ),
// ], //<Widget>[]
// ), //Stack
//   ), //Pa
//   Row(
//   mainAxisAlignment: MainAxisAlignment.start,
//   children: <Widget>[
// Container(
//   margin: const EdgeInsets.fromLTRB(8,560,0,20),
//   width: 120.0,
//   height:120.0,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(150), color: Colors.green),
//   child: const Padding(
//     padding: EdgeInsets.all(8.0),
//   ),
// ),
//     Container(
//       margin: const EdgeInsets.fromLTRB(8,60,0,0),
//       width: 120.0,
//       height:120.0,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(150), color: Colors.blue),
//       child: const Padding(
//         padding: EdgeInsets.all(8.0),
//       ),
//     ),
//     Container(
//       margin: const EdgeInsets.fromLTRB(8,30,0,500),
//       width: 120.0,
//       height:120.0,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(150), color: Colors.red),
//       child: const Padding(
//         padding: EdgeInsets.all(8.0),
//       ),
//     ),
// ],
//   // Container(
//   //   margin: EdgeInsets.fromLTRB(8,500,0,0),
//   //   width: 170.0,
//   //   height:170.0,
//   //   decoration: BoxDecoration(
//   //       borderRadius: BorderRadius.circular(150), color: Colors.green),
//   //   child: const Padding(
//   //     padding: EdgeInsets.all(8.0),
//   //   ),
//   // ),
//
//   // Container(
//   //
//   //   child:CircleAvatar(
//   //
//   //     backgroundColor: Colors.greenAccent[400],
//   //     radius: 100,
//   //
//   //   ),
//   // ),
//
//   // Row(
//   //   mainAxisAlignment: MainAxisAlignment.start,
//   //   children: <Widget>[
//   //     Container(
//   //       width: 130,
//   //       height: 900,
//   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(0.0),
//   //                   color: Colors.white),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.start,
//   //         children: <Widget>[
//   //           Expanded(child:
//   //           Container(
//   //             width: 130.0,
//   //             height: 200.0,
//   //
//   //         decoration: BoxDecoration(
//   //                                   borderRadius: BorderRadius.circular(0.0),
//   //                                  color: Colors.blue),
//   //
//   //           ),
//   //               ),
//   //           Expanded(child:
//   //           Container(
//   //             width: 130.0,
//   //             height: 200.0,
//   //
//   //             decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(0.0),
//   //                 color: Colors.teal),
//   //
//   //           ),
//   //               ),
//   //           Expanded(child:
//   //           Container(
//   //             width: 130.0,
//   //             height: 200.0,
//   //
//   //             decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(0.0),
//   //                 color: Colors.grey),
//   //
//   //           ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //     Container(
//   //       width: 130,
//   //       height: 900,
//   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(0.0),
//   //           color: Colors.white),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.start,
//   //         children: <Widget>[
//   //           Expanded(child:
//   //           Container(
//   //             width: 130.0,
//   //             height: 200.0,
//   //
//   //             decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(0.0),
//   //                 color: Colors.teal),
//   //
//   //           ),
//   //           ),
//   //           Expanded(child:
//   //           Container(
//   //             width: 130.0,
//   //             height: 200.0,
//   //
//   //             decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(0.0),
//   //                 color: Colors.grey),
//   //
//   //           ),
//   //           ),
//   //           Expanded(child:
//   //           Container(
//   //             width: 130.0,
//   //             height: 200.0,
//   //
//   //             decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(0.0),
//   //                 color: Colors.blue),
//   //
//   //           ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //     Container(
//   //       width: 130,
//   //       height: 900,
//   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(0.0),
//   //           color: Colors.white),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.start,
//   //         children: <Widget>[
//   //           Expanded(child:
//   //           Container(
//   //             width: 130.0,
//   //             height: 200.0,
//   //
//   //             decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(0.0),
//   //                 color: Colors.grey),
//   //
//   //           ),
//   //           ),
//   //           Expanded(child:
//   //           Container(
//   //             width: 131.0,
//   //             height: 200.0,
//   //
//   //             decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(0.0),
//   //                 color: Colors.blue),
//   //
//   //           ),
//   //           ),
//   //           Expanded(child:
//   //           Container(
//   //             width: 130.0,
//   //             height: 200.0,
//   //
//   //             decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(0.0),
//   //                 color: Colors.teal),
//   //
//   //           ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   ],
//   // ),
//
//   // Row(
//   //   mainAxisAlignment: MainAxisAlignment.start,
//   //   children: <Widget>[
//   //     Container(
//   //       width:130.0,
//   //       height:900.0,
//   //   decoration: BoxDecoration(
//   //                         borderRadius: BorderRadius.circular(0.0),
//   //                        color: Colors.blue),
//   //     ),
//   //     Container(
//   //       width:140.0,
//   //       height:900.0,
//   //       decoration: BoxDecoration(
//   //           borderRadius: BorderRadius.circular(0.0),
//   //           color: Colors.white),
//   //       child: Column(
//   //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //           children: <Widget>[
//   //
//   //             Container(
//   //               width: 200.0,
//   //               height: 200.0,
//   //               decoration: BoxDecoration(
//   //                   borderRadius: BorderRadius.circular(0.0),
//   //                   color: Colors.grey),
//   //             ),
//   //
//   //             Container(
//   //               width: 150.0,
//   //               height: 200.0,
//   //               decoration: BoxDecoration(
//   //                   borderRadius: BorderRadius.circular(0.0),
//   //                   color: Colors.yellow),
//   //             ),
//   //
//   //             Container(
//   //               width: 200.0,
//   //               height: 200.0,
//   //               decoration: BoxDecoration(
//   //                   borderRadius: BorderRadius.circular(0.0),
//   //                   color: Colors.green),
//   //             ),
//   //
//   //
//   //           ],
//   //
//   //       ),
//   //
//   //     ),
//   //     Container(
//   //       width:121.7,
//   //       height:900.0,
//   //       decoration: BoxDecoration(
//   //           borderRadius: BorderRadius.circular(0.0),
//   //           color: Colors.blue),
//   //     ),
//   //
//   //   ],
//   //
//   // )
//
//   // Column(
//   //   mainAxisAlignment: MainAxisAlignment.start,
//   //   children: <Widget>[
//   //
//   //        SizedBox(
//   //         child: Row(
//   //           children: <Widget>[
//   //              Container(
//   //                 width: 96.0,
//   //                 height: 350.0,
//   //                 decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(0.0),
//   //                     color: Colors.blue),
//   //                 child: const Padding(
//   //                   padding: EdgeInsets.all(0.0),
//   //                 ),
//   //               ),
//   //
//   //                Container(
//   //                 width: 96.0,
//   //                 height: 350.0,
//   //                 decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(0.0),
//   //                     color: Colors.green),
//   //                 child: const Padding(
//   //                   padding: EdgeInsets.all(0.0),
//   //                 ),
//   //               ),
//   //
//   //              Container(
//   //                 width: 98.0,
//   //                 height: 350.0,
//   //                 decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(0.0),
//   //                     color: Colors.yellow),
//   //                 child: const Padding(
//   //                   padding: EdgeInsets.all(0.0),
//   //                 ),
//   //               ),
//   //            Container(
//   //                 width: 100.5,
//   //                 height: 350.0,
//   //                 decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(0.0),
//   //                     color: Colors.blueGrey),
//   //                 child: const Padding(
//   //                   padding: EdgeInsets.all(0.0),
//   //                 ),
//   //               ),
//   //
//   //           ],
//   //         ),
//   //       ),
//   //
//   //     Expanded(
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.start,
//   //         children: <Widget>[
//   //           Expanded(
//   //             child: Container(
//   //               width: 400.0,
//   //               height: 350.0,
//   //               decoration: const BoxDecoration(
//   //
//   //                   color: Colors.blue),
//   //
//   //             ),
//   //           ),
//   //           Expanded(
//   //             child: Container(
//   //               width: 500.0,
//   //               height: 500.0,
//   //               decoration: BoxDecoration(
//   //                   borderRadius: BorderRadius.circular(0.0),
//   //                   color: Colors.green),
//   //               child: const Padding(
//   //                 padding: EdgeInsets.all(0.0),
//   //               ),
//   //             ),
//   //           ),
//   //           Expanded(
//   //             child: Container(
//   //               width: 400.0,
//   //               height: 350.0,
//   //               decoration: BoxDecoration(
//   //                   borderRadius: BorderRadius.circular(0.0),
//   //                   color: Colors.yellow),
//   //               child: const Padding(
//   //                 padding: EdgeInsets.all(0.0),
//   //               ),
//   //             ),
//   //           ),
//   //           Expanded(
//   //             child: Container(
//   //               width: 400.0,
//   //               height: 350.0,
//   //               decoration: BoxDecoration(
//   //                   borderRadius: BorderRadius.circular(0.0),
//   //                   color: Colors.blueGrey),
//   //               child: const Padding(
//   //                 padding: EdgeInsets.all(0.0),
//   //               ),
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //
//   //   ],
//   // ),



import 'package:flutter/material.dart';

class TestClass extends StatefulWidget {
  const TestClass({required Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TestClassState createState() => _TestClassState();
}

class _TestClassState extends State<TestClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog Demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                     showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Show Alert Dialog Box"),
                        content: const Text("You have raised a Alert Dialog Box"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: const Text("Ok"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text("Show alert Dialog box"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}