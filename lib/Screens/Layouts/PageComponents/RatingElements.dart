import 'package:flutter/material.dart';
import 'package:stoody/Services/ThemeService.dart';

typedef void RatingChangeCallback(double rating);

class StarRating extends StatefulWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color color;
  final double fontsize;

  const StarRating(
      {this.starCount = 5,
      this.rating = 0,
      this.onRatingChanged,
      this.color = Colors.yellowAccent,
      this.fontsize = normaltextSize});
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= widget.rating) {
      icon = new Icon(
        Icons.star_border,
        color: lightbggreenColor,
        size: widget.fontsize,
      );
    } else if (index > widget.rating - 1 && index < widget.rating) {
      icon = new Icon(
        Icons.star_half,
        color: widget.color != null ? widget.color : Colors.grey.shade600,
        size: widget.fontsize,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: widget.color != null ? widget.color : Colors.grey.shade600,
        size: widget.fontsize,
      );
    }
    return new InkResponse(
      onTap: widget.onRatingChanged == null
          ? null
          : () => widget.onRatingChanged!(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
        children: new List.generate(
            widget.starCount, (index) => buildStar(context, index)));
  }
}
