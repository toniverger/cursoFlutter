import 'package:flutter/material.dart';
import 'package:hackernews/review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Review(pathImage: "images/7OPRbL0c_400x400.jpeg", name: "Lu Panizza", details: "21 review 35 photos", comment: "Me encantó, es el viaje de la brillantina"),
        Review(pathImage: "images/408d6a483fca55183ef414265a2d0063.jpeg", name: "Toni Verger", details: "11 review 52 photos", comment: "Todo bien, todo correcto"),
        Review(pathImage: "images/istockphoto-1150477623-170667a.jpeg", name: "Varuna Yasas", details: "1 review 5 photos", comment: "There is an amazing place in Sri Lanka"),
      ],
    );
  }
}