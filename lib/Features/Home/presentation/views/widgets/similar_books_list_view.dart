import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal ,
          itemBuilder: (context , index) {
            return const Padding(
              padding: EdgeInsets.only(left: 5),
              child: CustomBookImage(
                imageUrl: 'https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_1280.jpg',
              ),
            );
          }),
    );
  }
}
