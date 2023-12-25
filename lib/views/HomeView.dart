
import 'package:exercice_flutter_api/model/APIResponse.dart';
import 'package:exercice_flutter_api/model/GeoPosition.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

import '../services/ApiService.dart';
import '../services/LocationService.dart';

class HomeView extends StatefulWidget {

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeView> {

  GeoPosition?  userPosition;
  APIResponse?  apiResponse;

  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(userPosition?.city ?? "Ma météo"),),
      body: Center(child: Text("Notre réponse : ${apiResponse?.cnt ??0}"),),
    );
  }

  getUserLocation() async {
    final loc = await LocationService().getCity();
    if (loc != null) {
      setState(() {
        userPosition = loc;
      });
      apiResponse = await ApiService().callApi(userPosition!);
      setState(() {

      });
    }
  }



}


