import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/use_cases/use_case.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {

  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
    return await homeRepo.fetchFeaturedBooks(
      pageNumber: param,
    );
  }

}




