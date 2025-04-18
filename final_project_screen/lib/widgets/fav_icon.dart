import 'package:flutter/material.dart';

class FavoriteIconCustom extends StatefulWidget {
  const FavoriteIconCustom({super.key});

  @override
  State<FavoriteIconCustom> createState() => _FavoriteIconCustomState();
}

class _FavoriteIconCustomState extends State<FavoriteIconCustom> {
  bool favoriteBorder = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: () {
          setState(() {
            favoriteBorder = !favoriteBorder;
          });
        },
        icon: Icon(
          favoriteBorder ? Icons.favorite : Icons.favorite_border,
          color: favoriteBorder ? Colors.red : Colors.black,
          size: 28,
        ),
      ),
    );
  }
}
