import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String image;
  final String name;
  String quantaty;
  double price;
  final Color bgColor;

  ProductModel({
    required this.bgColor,
    required this.id,
    required this.image,
    required this.name,
    required this.quantaty,
    required this.price,
  });
}
