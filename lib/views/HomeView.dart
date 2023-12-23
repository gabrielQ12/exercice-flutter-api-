
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Ma météo"),),
      body: Center(child: Text("body"),),
    );
  }
}


