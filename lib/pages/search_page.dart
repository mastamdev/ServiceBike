import 'package:flutter/material.dart';
import 'package:servicebike/theme.dart';
import 'package:servicebike/widgets/product_list_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteGreyColor,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 80),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kWhiteColor,
            elevation: 1,
            title: Row(
              children: [
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
                  height: 18,
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: kWhiteGreyColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          onFieldSubmitted: (value) {
                            Navigator.pushNamed(context, '/search-result');
                          },
                          decoration: InputDecoration(
                            hintText: 'Search Tools',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.close,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            SizedBox(
              height: 41,
            ),
            Text(
              'Tools',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ProductListItem(
              title: 'ACCU',
              price: 30000,
              imageUrl: 'asset/sparepart1.png',
            ),
            ProductListItem(
              title: 'Spedometer Digital',
              price: 150000,
              imageUrl: 'asset/sparepart2.png',
            ),
            ProductListItem(
              title: 'Spedometer Analog',
              price: 120000,
              imageUrl: 'asset/sparepart3.png',
            ),
            ProductListItem(
              title: 'Vanbelt',
              price: 280000,
              imageUrl: 'asset/sparepart5.png',
            ),
            ProductListItem(
              title: 'Baut Emas',
              price: 56000,
              imageUrl: 'asset/sparepart6.png',
            ),
            ProductListItem(
              title: 'Bak Kopling',
              price: 80000,
              imageUrl: 'asset/sparepart7.png',
            ),
            ProductListItem(
              title: 'Jeruji Mesin',
              price: 100000,
              imageUrl: 'asset/sparepart8.png',
            ),
            ProductListItem(
              title: 'Busi',
              price: 300000,
              imageUrl: 'asset/sparepart9.png',
            ),
            ProductListItem(
              title: 'Busi Premium',
              price: 350000,
              imageUrl: 'asset/sparepart10.png',
            ),
          ],
        ));
  }
}
