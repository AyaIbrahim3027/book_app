import 'package:book_app/Features/Home/data/models/repos/home_repo_impl.dart';
import 'package:book_app/Features/Search/data/models/repos/search_repo_impl.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(
    getIt.get<ApiService>(),
  ));
}
