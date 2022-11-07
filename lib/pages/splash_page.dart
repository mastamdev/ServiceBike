import 'dart:async';

import 'package:flutter/material.dart';
import 'package:servicebike/theme.dart';
import 'package:servicebike/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/onboarding',(route) => false);
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 16,
              ),
              width: 98,
              height: 82,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'asset/logo_light.png',
                  ),
                ),
              ),
            ),
            Text(
              'Bike Store',
              style: whiteTextStyle.copyWith(
                fontSize: 36,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
