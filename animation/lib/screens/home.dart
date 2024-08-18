import 'package:flutter/material.dart';

import '../shared/screenTitle.dart';
import '../shared/tripList.dart';
class Home extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get key => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"), 
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
             const SizedBox(
              height: 190,
              child: ScreenTitle(text: 'Trips',),
            ),
             Flexible(
              child: TripList(),
            )
            //Sandbox(),
          ],
        )
      )
    );
  }
}

//be the better version of your self day by day
//just start changing tha way of your talking just start to impress every persone
