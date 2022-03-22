import 'package:flutter/material.dart';
import 'package:hackernews/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({Key? key}) : super(key: key);

  final String descriptionDummy =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam sapien accumsan risus bibendum, et condimentum ipsum varius. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque posuere malesuada quam id maximus. Sed eleifend vestibulum dictum. Nunc pulvinar dictum risus, ut tristique diam aliquet sed. Aliquam vitae purus a nisl tristique porttitor. Nulla at suscipit nibh, eu elementum massa.';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(children: [
          DescriptionPlace(
              namePlace: "Bahamas",
              stars: 4,
              descriptionPlace: descriptionDummy),
          ReviewList(),
        ]),
        const HeaderAppBar()
      ],
    );
  }
}
