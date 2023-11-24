import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/repos/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> searchBooks({required String query}) async {

    emit(SearchLoading());
    var result = await searchRepo.fetchBooks(query: query);
    result.fold((failure) {
      emit(SearchFailure(failure.errMessage));
    }, (books) {
      emit(SearchSuccess(books));
    });

  }

  }


