import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowOfButtons extends StatelessWidget {
  const RowOfButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top:  40.0,
          ),
          decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.bookmark_border_outlined),
              color: Colors.purple,
              onPressed: () {},
            ),
          ),
        Container(
          margin: const EdgeInsets.only(
            top: 40.0,
            left: 26.0,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.card_giftcard_outlined),
            color: Colors.purple,
            onPressed: () {},
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 40.0,
            left: 26.0,
          ),
          width: 70.0,
          height: 70.0,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.add_outlined),
            color: Colors.purple,
            onPressed: () {},
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 40.0,
            left: 26.0,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.email_outlined),
            color: Colors.purple,
            onPressed: () {},
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 40.0,
            left: 26.0,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.person_outlined),
            color: Colors.purple,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
