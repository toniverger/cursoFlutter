import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackernews/description_place.dart';
import 'package:hackernews/review_list.dart';
import 'package:hackernews/gradient_back.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String descriptionDummy =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam sapien accumsan risus bibendum, et condimentum ipsum varius. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque posuere malesuada quam id maximus. Sed eleifend vestibulum dictum. Nunc pulvinar dictum risus, ut tristique diam aliquet sed. Aliquam vitae purus a nisl tristique porttitor. Nulla at suscipit nibh, eu elementum massa.';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome to Flutter',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: Scaffold(
            body: Stack(
              children: [
                ListView(children: [
                  DescriptionPlace(
                      namePlace: "Bahamas",
                      stars: 4,
                      descriptionPlace: descriptionDummy),
                  ReviewList(),
                ]),
                const GradientBack(title: "Popular",),
              ],
            )));
  }
}
