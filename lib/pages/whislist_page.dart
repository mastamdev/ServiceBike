import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:servicebike/theme.dart';

import '../widgets/product_grid_item.dart';
import '../widgets/skeleton_item.dart';

class WhislistPage extends StatefulWidget {
  const WhislistPage({super.key});

  @override
  State<WhislistPage> createState() => _WhislistPageState();
}

class _WhislistPageState extends State<WhislistPage> {

  bool isLoading = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
                color: kBlackColor,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'Whislist',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            Spacer(),
            Image.asset(
              'asset/icon_search.png',
              width: 24,
            ),
          ]),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          onTap: (value) {
              if (value == 0 ) {
                Navigator.pushNamed(context, '/home');
              }
              if (value == 2) {
                Navigator.pushNamed(context, '/profile');
              }
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: kWhiteColor,
            items: [
              BottomNavigationBarItem(  
                icon: Image.asset(
                  'asset/home.png',
                  width: 24,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/button_whislist.png',
                  width: 24,
                  color: kBlueColor,
                ),
                label: 'whistlist',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/icon_profile.png',
                  width: 24,
                ),
                label: 'profile',
              ),
            ]),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(
            height: 30,
          ),
          isLoading ? buildLoading() : buildGrid(),
        ],
      ),
    );
  }

  Widget buildLoading() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
      ],
    );
  }

  Widget buildGrid() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        ProductGridItem(
          title: 'Poan Chair',
          imageUrl: 'asset/image_product_grid1.png',
          price: 34,
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageUrl: 'asset/image_product_grid2.png',
          price: 34,
          isWhislist: true,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageUrl: 'asset/image_product_grid3.png',
          price: 34,
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageUrl: 'asset/image_product_grid4.png',
          price: 34,
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageUrl: 'asset/image_product_grid1.png',
          price: 34,
          isWhislist: false,
        ),
      ],
    );
  }
}
