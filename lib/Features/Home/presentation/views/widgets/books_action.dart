import 'package:book_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: const [
          Expanded(
              child: CustomButton(
                text: '19.99 €',
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
                text: 'Free Preview',
                fontSize: 17.5,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              )),
        ],
      ),
    );
  }
}