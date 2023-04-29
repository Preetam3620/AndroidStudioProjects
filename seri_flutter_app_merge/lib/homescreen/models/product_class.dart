import 'package:flutter/material.dart';

class Product {
  final String arrival;
  final String name;
  final String category;
  final double originalPrice;
  final int discount;

  Product({
    this.arrival,
    this.name,
    this.category,
    this.originalPrice,
    this.discount,
  });
}
