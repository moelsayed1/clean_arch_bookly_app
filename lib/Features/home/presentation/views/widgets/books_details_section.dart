import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18),
          child: CustomBookImage(
            image: AssetsData.testImage,
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Text(
          'The Jungle Book',
          style: Style.textStyle30,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Style.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 30,
        ),
        BooksAction(),
      ],
    );
  }
}