import 'package:flutter/material.dart';
import 'package:servicebike/pages/category_page.dart';
import 'package:servicebike/pages/details_page.dart';
import 'package:servicebike/pages/home_page.dart';
import 'package:servicebike/pages/onboarding_page.dart';
import 'package:servicebike/pages/profile_page.dart';
import 'package:servicebike/pages/search_page.dart';
import 'package:servicebike/pages/search_result_page.dart';
import 'package:servicebike/pages/sign_in_page.dart';
import 'package:servicebike/pages/splash_page.dart';
import 'package:servicebike/pages/whislist_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnBoardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/search-result': (context) => SearchResultPage(),
         '/category': (context) => CategoryPage(),
         '/whislist': (context) => WhislistPage(),
         '/profile': (context) => ProfilePage(),
         '/detail': (context) => DetailPage(),
      },
    );
  }
}
