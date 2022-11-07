import 'package:flutter/material.dart';

import '../theme.dart';

class OnBoardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const OnBoardingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Image.asset(
          imageUrl,
          width: double.infinity,
        ),
        SizedBox(
          height: 127,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
