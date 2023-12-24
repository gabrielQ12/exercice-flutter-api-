
import 'package:exercice_flutter_api/model/GeoPosition.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

import '../services/LocationService.dart';

class HomeView extends StatefulWidget {

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeView> {

  GeoPosition?  userPosition;

  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(userPosition?.city ?? "Ma météo"),),
      body: Center(child: Text("Notre position : \n ${userPosition?.lat} \n ${userPosition?.lon}"),),
    );
  }

  getUserLocation() async {
    final loc = await LocationService().getCity();
    if (loc != null) {
      setState(() {
        userPosition = loc;
      });
    }
  }



}


