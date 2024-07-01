import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_app/Features/home/domain/use_cases/no_param_use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends NoParamUseCase {

  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async{

    return await homeRepo.fetchFeaturedBooks();
  }

}




