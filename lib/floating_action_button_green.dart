import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool isFav = false;

  void onPressedFav() {
    setState(() {
      isFav = !isFav;
    });
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(isFav ? "Anadido a Favoritos" : "Eliminado de Favoritos"),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: isFav ? const Icon(Icons.favorite, color: Colors.white) :
        const Icon(Icons.favorite_border_outlined, color: Colors.white),
      );
  }

}
