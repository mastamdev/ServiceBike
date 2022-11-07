import 'package:flutter/material.dart';
import 'package:servicebike/theme.dart';
import 'package:servicebike/widgets/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
            onTap: (value) {
              if (value == 0) {
                Navigator.pushNamed(context, '/home');
              }
              if (value == 1) {
                Navigator.pushNamed(context, '/whislist');
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
                ),
                label: 'whistlist',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'asset/icon_profile.png',
                  width: 24,
                  color: kBlueColor,
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
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 24,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 130,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 24,
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'asset/image_profile.png',
                                width: 120,
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Text(
                                'Tama',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: medium,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 32,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(36),
                        ),
                        color: kWhiteColor,
                      ),
                      child: Column(
                        children: [
                          ProfileMenu(iconUrl: 'asset/icon_profile.png', title: 'My Profile',
                          ),
                          ProfileMenu(
                            iconUrl: 'asset/icon_adress.png',
                            title: 'My Adress',
                          ),
                          ProfileMenu(
                            iconUrl: 'asset/icon_payment.png',
                            title: 'Method Payment',
                          ),
                        ],
                      ),
                    )
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
