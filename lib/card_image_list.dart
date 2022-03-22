import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const [
            CardImage(pathName: 'images/sol.jpeg'),
            CardImage(pathName: 'images/hamaca.jpeg'),
            CardImage(pathName: 'images/palmera.jpeg'),
            CardImage(pathName: 'images/chanchos.jpeg'),
        ],
      ),
    );
  }

}
