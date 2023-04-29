import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:seri_flutter_app/constants.dart';
import 'package:seri_flutter_app/common/components/AppBarWithImage.dart';
import 'package:seri_flutter_app/common/components/CustomDrawer.dart';
import 'package:seri_flutter_app/homescreen/data/product_data.dart';
import 'package:seri_flutter_app/homescreen/data/product_list.dart';
import 'package:seri_flutter_app/homescreen/models/product_class.dart';

class ShowView extends StatefulWidget {
  final String title;
  const ShowView({Key key, this.title}) : super(key: key);

  @override
  _ShowViewState createState() => _ShowViewState();
}

class _ShowViewState extends State<ShowView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBarWithImage(context),
      drawer: CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(5.w, 5.w, 2.5.w, 5.w),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'GothamMedium',
                    ),
                  ),
                  Wrap(
                    children: getProducts(context),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> getProducts(BuildContext context) {
  List<Widget> productList = [];
  for (Product product in products) {
    productList.add(ProductList(myProduct: product));
  }
  return productList;
}
