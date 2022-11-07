import 'package:flutter/material.dart';
import 'package:servicebike/theme.dart';

class ProfileMenu extends StatelessWidget {
  final String iconUrl;
  final String title;
  const ProfileMenu({Key? key, required this.iconUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,      
      ),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: kGreyColor,
          )
        ], 
      ),
    );
  }
}
