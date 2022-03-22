import 'package:flutter/material.dart';
import 'package:hackernews/gradient_back.dart';
import 'package:hackernews/row_of_buttons.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradient = Container(child: const GradientBack(title: "Profile"));

    final header = Column(children: [
      Row(
        children: [
          Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3.0),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/sol.jpeg')))),
          Container(
            margin: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Antonio Verger",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Lato")),
                Text("toniverger@msn.com",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontFamily: "Lato")),
              ],
            ),
          ),
        ],
      ),
      Row(
        children: const [RowOfButtons()],
      )
    ]);

    return Column(
      children: [
        Stack(children: [
          gradient,
          Container(
            margin: const EdgeInsets.only(
              top: 120.0,
              left: 20.0,
            ),
            child: header,
          )
        ])
      ],
    );
  }
}
