import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/products_list.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';
import 'package:fruit_hub/features/home/widgets/product_card.dart';

class Recommended_Combo extends StatelessWidget {
  const Recommended_Combo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recommended Combo",
              style: TextStyles.titlestyle(fontSize: 20),
            ),
            TextButton(
              child: Text(
                "See all",
                style: TextStyles.bodystyle(color: AppColors.primaryColor),
              ),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return productCard(product: RecommendedCombo[index]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 20);
            },
            itemCount: RecommendedCombo.length,
          ),
        ),
      ],
    );
  }
}
