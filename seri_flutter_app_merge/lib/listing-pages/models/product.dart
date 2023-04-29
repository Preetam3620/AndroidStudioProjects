import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Product {
  String name;
  AssetImage image;
  double price;
  bool isLiked;
  double discount;
  String highlight;
  Product({this.name, this.image, this.price, this.isLiked, this.discount, this.highlight});
}
