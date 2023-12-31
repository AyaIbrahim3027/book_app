import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/core/utils/functions/launch_url.dart';
import 'package:book_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children:  [
          const Expanded(
              child: CustomButton(
                text: 'Free',
                fontWeight: FontWeight.w900,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              )),
          Expanded(
              child: CustomButton(
                onPressed: ()  {
                  launchCustomUrl(context, bookModel.volumeInfo.previewLink);
                },
                text:  getText(bookModel),
                fontSize: 17.5,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
                backgroundColor: const Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null){
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
