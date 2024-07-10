import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/presentation/manager/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturesBooksListView extends StatefulWidget {
  const FeaturesBooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  State<FeaturesBooksListView> createState() => _FeaturesBooksListViewState();
}

class _FeaturesBooksListViewState extends State<FeaturesBooksListView> {
  ScrollController? _scrollController;

  var nextPage = 1;

  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController!.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  void _scrollListener() {
    var currentPosition = _scrollController!.position.pixels;
    var maxScrollLength = _scrollController!.position.maxScrollExtent;
    if (currentPosition >= maxScrollLength * 0.7) {
      if (!isLoading) {
        isLoading = true;
        BlocProvider.of<FeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(
              image: widget.books[index].image ?? AssetsData.testImage,
            ),
          );
        },
      ),
    );
  }
}
