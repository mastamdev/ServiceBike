import 'package:flutter/material.dart';
import 'package:servicebike/theme.dart';
import 'package:servicebike/widgets/product_grid_item.dart';
import 'package:servicebike/widgets/skeleton_item.dart';

import '../widgets/product_list_item.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  bool isLoading = true;
  bool isShowGrid = true;

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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 110),
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
                  padding: EdgeInsets.all(19),
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
                            hintText: 'Search',
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
                )),
                SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'asset/icon_filter.png',
                  width: 24,
                ),
              ],
            ),
            bottom: TabBar(
                indicatorColor: kBlackColor,
                labelColor: kBlackColor,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Accecories',
                  ),
                  Tab(
                    text: 'Service',
                  ),
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            buildBody(),
            buildBody(),
            buildBody(),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Result for : Tools',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                isShowGrid = !isShowGrid;
                });
              },
              child: Image.asset(
                isShowGrid? 'asset/list.png' : 'asset/icon_grid.png',
                width: 24,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        isLoading ? buildLoading() : isShowGrid ? buildGrid() :
        buildList(),
      ],
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
          title: 'ACCU',
          price: 30000,
          imageUrl: 'asset/sparepart1.png',
          isWhislist: false,
        ),
        ProductGridItem(
         title: 'Spedometer Digital',
          price: 150000,
          imageUrl: 'asset/sparepart2.png',
          isWhislist: true,
        ),
        ProductGridItem(
         title: 'Sped0moter Analog',
          price: 120000,
          imageUrl: 'asset/sparepart3.png',
          isWhislist: false,
        ),
        ProductGridItem(
           title: 'Vanbelt',
          price: 280000,
          imageUrl: 'asset/sparepart4.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Baut Emas',
          price: 30000,
          imageUrl: 'asset/sparepart5.png',
          isWhislist: false,
        ),
        ProductGridItem(
           title: 'Baut Emas',
          price: 56000,
          imageUrl: 'asset/sparepart6.png',
          isWhislist: false,
        ),
        ProductGridItem(
           title: 'Bak Koping',
          price: 80000,
          imageUrl: 'asset/sparepart7.png',
          isWhislist: false,
        ),
        ProductGridItem(
         title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/sparepart8.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/sparepart9.png',
          isWhislist: false,
        ),
        ProductGridItem(
         title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/sparepart10.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Tempat Duduk Anak',
          price: 60000,
          imageUrl: 'asset/accecories1.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Mur Penutup',
          price: 40000,
          imageUrl: 'asset/accecories2.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Penutup Mur Emas',
          price: 50000,
          imageUrl: 'asset/accecories3.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Lampu Merah',
          price: 130000,
          imageUrl: 'asset/accecories4.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Blank',
          price: 50000,
          imageUrl: 'asset/accecories5.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Voltmeter',
          price: 250000,
          imageUrl: 'asset/accecories6.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Lampu Putih',
          price: 180000,
          imageUrl: 'asset/accecories7.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Lampu Hitam',
          price: 200000,
          imageUrl: 'asset/accecories8.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Penutup Mesin',
          price: 200000,
          imageUrl: 'asset/accecories9.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Rumah Mesin',
          price: 400000,
          imageUrl: 'asset/accecories10.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Paket Service 1',
          price: 500000,
          imageUrl: 'asset/service1.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Paket Service 2',
          price: 1000000,
          imageUrl: 'asset/service2.png',
          isWhislist: false,
        ),
        ProductGridItem(
          title: 'Paket Service 3',
          price: 1500000,
          imageUrl: 'asset/service3.png',
          isWhislist: false,
        ),
      ],
    );
  }

  Widget buildList() {
    return Column(
      children: [
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
          title: 'Spedmoter Analog',
          price: 120000,
          imageUrl: 'asset/sparepart3.png',
        ),
        ProductListItem(
          title: 'Vanbelt',
          price: 280000,
          imageUrl: 'asset/sparepart4.png',
        ),
        ProductListItem(
          title: 'Baut Emas',
          price: 30000,
          imageUrl: 'asset/sparepart5.png',
        ),
        ProductListItem(
          title: 'Baut Emas',
          price: 56000,
          imageUrl: 'asset/sparepart6.png',
        ),
        ProductListItem(
          title: 'Bak Koping',
          price: 80000,
          imageUrl: 'asset/sparepart7.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/sparepart8.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/sparepart8.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/sparepart9.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/sparepart10.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories1.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories2.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories3.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories4.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories5.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories6.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories7.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories8.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories9.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/accecories10.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/service1.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/service2.png',
        ),
        ProductListItem(
          title: 'Jeruji Mesin',
          price: 100000,
          imageUrl: 'asset/service3.png',
        ),
      ],
    );
  }
}
