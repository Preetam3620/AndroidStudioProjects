import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seri_flutter_app/common/components/CustomDrawer.dart';
import 'package:seri_flutter_app/common/screens/empty-cart/emptyCartPage.dart';
import 'package:sizer/sizer.dart';

import '../../constants.dart';
import '../models/combosCard.dart';
import '../models/productCard.dart';
import '../models/productsLists.dart';

class ListingPage1 extends StatefulWidget {
  const ListingPage1({Key key}) : super(key: key);

  @override
  _ListingPage1State createState() => _ListingPage1State();
}

class _ListingPage1State extends State<ListingPage1> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: kDefaultPadding),
            child: Image.asset(
              'lib/assets/images/search_white.png',
              //height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.08,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EmptyCartPage()));
            },
            child: Padding(
              padding: EdgeInsets.only(right: kDefaultPadding),
              child: Image.asset(
                'lib/assets/images/cart_white.png',
                //height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
          ),
        ],
        titleSpacing: 0,
        title: Image.asset(
          'lib/assets/images/Logo.png',
          height: MediaQuery.of(context).size.height * 0.08,
        ),
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'lib/assets/icons/Story Books (3).png',
                  fit: BoxFit.fill,
                ),
              ),
              TabBar(
                indicatorColor: Color.fromARGB(255, 204, 0, 0),
                indicatorWeight: 2,
                labelColor: Color.fromARGB(255, 71, 54, 111),
                labelStyle: TextStyle(fontFamily: 'GothamMedium', fontSize: 12.sp, fontWeight: FontWeight.w500),
                unselectedLabelColor: Color.fromARGB(255, 71, 54, 111),
                labelPadding: EdgeInsets.all(0),
                tabs: [
                  Tab(text: 'English Medium'),
                  Tab(text: 'Hindi Medium'),
                  Tab(text: 'Marathi Medium'),
                ],
                controller: _tabController,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Combos',
                              style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: combosList.length,
                            itemBuilder: (context, index) => combosCard(context, index, combosList),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Textbooks',
                              style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: textbookList.length,
                            itemBuilder: (context, index) => productCard(context, index, textbookList),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Digests',
                              style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: textbookList.length,
                            itemBuilder: (context, index) => productCard(context, index, digestList),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Helping Hands',
                              style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: textbookList.length,
                            itemBuilder: (context, index) => productCard(context, index, helpingHandList),
                          ),
                        ),
                        SizedBox(height: 14.h)
                      ],
                    ),
                    Center(
                      child: Text(
                        'This is Hindi Medium Tab',
                        style: TextStyle(fontFamily: 'GothamMedium', fontSize: 32),
                      ),
                    ),
                    Center(
                      child: Text(
                        'This is Marathi Medium Tab',
                        style: TextStyle(fontFamily: 'GothamMedium', fontSize: 32),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
