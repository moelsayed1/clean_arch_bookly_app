import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';

class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {

  final List<BookEntity> books;

  NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewestBooksState {

  final String errMessage;

  NewestBooksFailure(this.errMessage);
}
