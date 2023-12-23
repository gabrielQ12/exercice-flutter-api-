import 'package:exercice_flutter_api/views/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // Assurer l'init des Widget
  WidgetsFlutterBinding.ensureInitialized();
  // Vouloir uniquement en portrait
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeView()
    );
  }
}
