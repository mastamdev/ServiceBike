import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:servicebike/theme.dart';
import 'package:servicebike/widgets/home_category_item.dart';
import 'package:servicebike/widgets/home_popuar_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: kWhiteColor,
            onTap: (value) {
              if (value == 1) {
                Navigator.pushNamed(context, '/whislist');
              }
              if (value == 2) {
                Navigator.pushNamed(context, '/profile');
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/home.png',
                  color: kBlueColor,
                  width: 24,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/button_whislist.png',
                  width: 24,
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
      body: Stack(
        children: [
          Image.asset(
            'asset/image_background.png',
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 24,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'asset/logo_dark.png',
                      width: 53,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Bike Store',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'asset/icon_cart.png',
                      width: 30,
                    )
                  ],
                ),
              ),

              // NOTE: SEARCH BAR
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    left: 24,
                    right: 24,
                  ),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: kWhiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search Tools',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      Image.asset(
                        'asset/icon_search.png',
                        width: 24,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              ),
              // NOTE: CATEGORY
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: blackTextStyle,
                    ),
                  ],
                ),
              ),

              // NOTE : CATEGORY CARAOUSEL
              Container(
                margin: EdgeInsets.only(
                  top: 25,
                ),
                child: CarouselSlider(
                  items: [
                    HomeCategoryItem(
                      imageUrl: 'asset/tools.png',
                      title: 'Tools',
                      subtitle: 'Perlegkapan',
                    ),
                    HomeCategoryItem(
                      imageUrl: 'asset/accecories.png',
                      title: 'Accecories',
                      subtitle: 'Assesories',
                    ),
                    HomeCategoryItem(
                      imageUrl: 'asset/service.png',
                      title: 'Service',
                      subtitle: 'Service',
                    ),
                  ],
                  options: CarouselOptions(
                      height: 140,
                      enableInfiniteScroll: false,
                      viewportFraction: 1,
                      onPageChanged: (value, _) {
                        setState(() {
                          categoryIndex = value;
                        });
                      }),
                ),
              ),

              //NOTE: INDICATOR CARAOUSEL
              Container(
                margin: EdgeInsets.only(top: 13, left: 24, right: 24),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            categoryIndex == 0 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            categoryIndex == 1 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            categoryIndex == 2 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                  ],
                ),
              ),
              //NOTE: TOOLS SECTION
              Container(
                margin: EdgeInsets.only(
                  top: 24,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                  color: kWhiteColor,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 24,
                        left: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Populer',
                            style: blackTextStyle.copyWith(
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            'Show All',
                            style: blackTextStyle,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 310,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            HomePopularItem(
                              title: 'Accu TDR',
                              imageUrl: 'asset/sparepart1.png',
                              price: 35000,
                              isWishList: true,
                            ),
                            HomePopularItem(
                              title: 'Tempat Duduk',
                              imageUrl: 'asset/accecories1.png',
                              price: 50000,
                              isWishList: false,
                            ),
                            HomePopularItem(
                              title: 'Service 5000KM',
                              imageUrl: 'asset/service1.png',
                              price: 200000,
                              isWishList: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
