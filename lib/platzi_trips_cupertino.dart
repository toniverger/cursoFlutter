import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  const PlatziTripsCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  label: ""
              ),
            ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => const HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => const SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => const ProfileTrips(),
              );
              default: break;
          }
          return Container();
        },
      ),
    );
  }

}