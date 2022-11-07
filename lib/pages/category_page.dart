import 'package:flutter/material.dart';
import 'package:servicebike/theme.dart';

import '../widgets/home_category_item.dart';
import '../widgets/product_grid_item.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
                'Tools',
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
              SizedBox(
                width: 18,
              ),
              Image.asset(
                'asset/icon_filter.png',
                width: 24,
              )
            ]
          ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            SizedBox(
              height: 10,
            ),
            HomeCategoryItem(
              imageUrl: 'asset/sparepart1.png',
              title: 'Sparepart',
              subtitle: 'Sparepart',
            ),
            SizedBox(
              height: 24,
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 18,
              runSpacing: 18,
              children: [
                ProductGridItem(
                  title: 'Poan Chair',
                  imageUrl: 'asset/sparepart1.png',
                  price: 3000,
                  isWhislist: false,
                ),
                ProductGridItem(
                  title: 'Spedometer Digital',
                  imageUrl: 'asset/sparepart2.png',
                  price: 34,
                  isWhislist: true,
                ),
                ProductGridItem(
                  title: 'Spedometer Analog',
                  imageUrl: 'asset/sparepart3.png',
                  price: 120000,
                  isWhislist: false,
                ),
                ProductGridItem(
                  title: 'Vanbelt',
                  imageUrl: 'asset/sparepart4.png',
                  price: 280000,
                  isWhislist: false,
                ),
                ProductGridItem(
                  title: 'Baut Emas',
                  imageUrl: 'asset/sparepart5.png',
                  price: 56000,
                  isWhislist: false,
                ),
                ProductGridItem(
                  title: 'Bak Kopling',
                  imageUrl: 'asset/sparepart6.png',
                  price: 80000,
                  isWhislist: false,
                ),
                ProductGridItem(
                  title: 'Jeruji Mesin',
                  imageUrl: 'asset/sparepart7.png',
                  price: 100000,
                  isWhislist: false,
                ),
                ProductGridItem(
                  title: 'Busi',
                  imageUrl: 'asset/sparepart8.png',
                  price: 56000,
                  isWhislist: false,
                ),
                ProductGridItem(
                  title: 'Baut Emas',
                  imageUrl: 'asset/sparepart9.png',
                  price: 300000,
                  isWhislist: false,
                ),
                ProductGridItem(
                  title: 'Baut Premium',
                  imageUrl: 'asset/sparepart10.png',
                  price: 350000,
                  isWhislist: false,
                ),
              ],
            ),
          ],
        )
      );
  }
}
