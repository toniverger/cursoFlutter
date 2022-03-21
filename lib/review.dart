import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({Key? key,
    required this.pathImage,
    required this.name,
    required this.details,
    required this.comment,
  }) : super(key: key);

  final String pathImage;
  final String name;
  final String details;
  final String comment;

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 4.0,
      ),
      child: const Icon(Icons.star, color: Color(0xFFf2c611)),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 17.0, fontFamily: 'Lato', fontWeight: FontWeight.w900)),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(details,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontSize: 13.0, fontFamily: 'Lato', color: Color(0xFFa3a5a7))),
    );

    final userName = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Text(name,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 17.0, fontFamily: 'Lato')),
    );

    final userDetails =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
          children: [
            userName,
            star,
            star,
            star,
            star,
          ]),
          userInfo,
          userComment,
    ]);

    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
      ),
    );

    return Row(
      children: [
        photo,
        userDetails,
      ],
    );
  }
}
