import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchBooks(
      {required String query});

}