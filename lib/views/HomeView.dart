
import 'package:flutter/material.dart';
import 'package:location/location.dart';

import '../services/LocationService.dart';

class HomeView extends StatefulWidget {

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeView> {

  LocationData?  locationData;

  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Ma météo"),),
      body: Center(child: Text("Notre position : \n ${locationData?.latitude} \n ${locationData?.longitude}"),),
    );
  }

  getUserLocation() async {
    final loc = await LocationService().getPosition();
    if (loc != null) {
      setState(() {
        locationData = loc;
      });
    }
  }



}


