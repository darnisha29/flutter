import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration:  BoxDecoration(
          image: DecorationImage(
              image:AssetImage('images/bg.png'),
              fit:BoxFit.fitWidth,
              alignment: Alignment.topLeft

          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            SizedBox(
              height: 160,
              child: Text("Trip",
                style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            //        Flexible(
            //        child: T
            // )
          ],
          // ),
        ),
      ),
    );
  }
}