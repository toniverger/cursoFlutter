import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  final String pathImage = "images/408d6a483fca55183ef414265a2d0063.jpeg";

  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(assetName)),
      ),
    );

    return Row(
      children: [

      ],
    )
  }
}