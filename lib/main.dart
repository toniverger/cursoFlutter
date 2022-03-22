import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackernews/platzi_trips_cupertino.dart';
import 'package:hackernews/platzi_trips.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const PlatziTrips(),
    );
  }
}
