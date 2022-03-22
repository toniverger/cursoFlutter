import 'package:flutter/material.dart';
import 'package:hackernews/home_trips.dart';
import 'package:hackernews/search_trips.dart';
import 'package:hackernews/profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    const HomeTrips(),
    const SearchTrips(),
    const ProfileTrips(),
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
          brightness: Brightness.light,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ]),
      ),
    );
  }
}
