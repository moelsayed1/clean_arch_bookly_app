import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';

class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksPaginationLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {

  final List<BookEntity> books;

  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksState {

  final String errMessage;

  FeaturedBooksFailure(this.errMessage);
}
