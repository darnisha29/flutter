import 'package:flutter/material.dart';

import '../models/Trip.dart';

class TripList extends StatefulWidget {
  const TripList({Key? key}) : super(key: key);

  @override
  State<TripList> createState() => _TripListState();
}

class _TripListState extends State<TripList> {
GlobalKey<AnimatedListState> _listkey = GlobalKey<AnimatedListState>();
List<Widget> _tripTiles = [];

@override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _addTrips();
    });
  }

  void _addTrips(){
List<Trip> trips = [
Trip(title:'Beach Paradise', price:'350',nights:'3',img:'beach.png'),
  Trip(title: 'City Break', price: '400', nights: '5', img: 'city.png'),
  Trip(title: 'Ski Adventure', price: '750', nights: '2', img: 'ski.png'),
  Trip(title: 'Space Blast', price: '600', nights: '4', img: 'space.png'),
];

_trips.forEach((Trip trip){
  _addTrips(_buildTrip(trip));
});
  }

  Widget _buildTrip(Trip trip){
return ListTile(
  onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(trip: trip)));
  },
  contentPadding: EdgeInsets.all(25),
  title:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget[],
  ),
);
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
