import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBar extends StatelessWidget {
  final double size;
  final double rating;
  RatingBar(this.size, this.rating);
  @override
  Widget build(BuildContext context) {
    return  RatingBarIndicator(
      rating: rating,
      itemCount: 5,
      itemSize: size,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );


  }
}
