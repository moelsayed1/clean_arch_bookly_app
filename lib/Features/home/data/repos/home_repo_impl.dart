import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}