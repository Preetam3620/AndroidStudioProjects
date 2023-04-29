import 'package:flutter/material.dart';
import 'package:seri_flutter_app/homescreen/data/product_data.dart';
import 'package:seri_flutter_app/homescreen/data/product_list.dart';
import 'package:seri_flutter_app/homescreen/data/title.dart';
import 'package:seri_flutter_app/homescreen/models/product_class.dart';

class BooksBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 0.5),
          height: size.height * 0.15,
          child: Image.asset('lib/assets/images/book_gif.gif'),
        ),
        Expanded(
          child: ListView(
            children: [
              TitleHome(
                title: 'Diary',
              ),
              Container(
                height: size.height * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, int index) {
                    Product product = products[index];
                    return ProductList(myProduct: product);
                  },
                ),
              ),
              TitleHome(
                title: 'Long Books',
              ),
              Container(
                height: size.height * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, int index) {
                    Product product = products[index];
                    return ProductList(myProduct: product);
                  },
                ),
              ),
              TitleHome(
                title: 'Project Books',
              ),
              Container(
                height: size.height * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, int index) {
                    Product product = products[index];
                    return ProductList(myProduct: product);
                  },
                ),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ],
    );
  }
}
