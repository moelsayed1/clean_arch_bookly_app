import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star_rounded,
          color: Color(0xffFDDA4A),
          size: 24,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Style.textStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(2390)',
          style: Style.textStyle14.copyWith(
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}