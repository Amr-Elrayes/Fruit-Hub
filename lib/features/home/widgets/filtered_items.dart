import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/products_list.dart';
import 'package:fruit_hub/features/home/widgets/product_card.dart';

// ignore: must_be_immutable
class FilteredItems extends StatelessWidget {
  FilteredItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return productCard(product: FilteredList[index]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 20);
            },
            itemCount: FilteredList.length,
          ),
        ),
      ],
    );
  }
}
