part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();
  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  final List<BookModel> searchResults;

  const SearchSuccess(this.searchResults);
}

class SearchFailure extends SearchState {
  final String errMessage;

  const SearchFailure(this.errMessage);
}
