import 'package:flutter/material.dart';
import 'package:hackernews/Button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  const DescriptionPlace({Key? key,
    required this.namePlace,
    required this.descriptionPlace,
    required this.stars,
  }) : super(key: key);

  final String namePlace;
  final int stars;
  final String descriptionPlace;

  @override
  Widget build(BuildContext context) {
    //TODO: implement build

    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(Icons.star_half, color: Color(0xFFf2c611)),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFdcdfda)
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(Icons.star, color: Color(0xFFf2c611)),
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 15.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(fontFamily: "Lato", fontSize: 14.0, color: Color(0xFF56575a)),
        textAlign: TextAlign.left,
      ),
    );

    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(fontFamily: "Lato", fontSize: 30.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            starHalf,
            starBorder,
          ],
        ),
      ],
    );

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [titleStars, description, const ButtonPurple(buttonText: "Navigate")]);
  }
}
