
import 'package:flutter/services.dart';
import 'package:location/location.dart';

class LocationService {
  // Get position
  Future<LocationData?> getPosition() async {
    try {
      Location location = Location();
      return  location.getLocation();
    } on PlatformException catch(error) {
      print("Nous avons une erreur pour récupéré la position : \n ${error.message}");
      return null;
    }
  }

  // Convertir position en ville

  // Convertir ville en position
}