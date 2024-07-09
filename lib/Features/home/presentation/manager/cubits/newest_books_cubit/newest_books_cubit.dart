import 'package:bookly_app/Features/home/presentation/manager/cubits/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {

    emit(NewestBooksLoading());
  }
}
