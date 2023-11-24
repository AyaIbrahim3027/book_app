import 'package:book_app/Features/Home/presentation/views/widgets/book_list_view_item.dart';
import 'package:book_app/Features/Search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.searchResults.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.searchResults[index] ,
                  ),
                  // child: Text('data'),
                );
              }
          );
        } else if (state is SearchFailure){
          return const CustomErrorWidget(errMessage: 'Search for Book');
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );

  }
}
