import 'package:flutter/material.dart';
import 'package:fruit_hub/core/functions/navigation.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';
import 'package:fruit_hub/features/details/details_screen.dart';
import 'package:fruit_hub/features/home/models/product_model.dart';

class productCard extends StatelessWidget {
  const productCard({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, DetailsScreen(product: product));
      },
      child: Container(
        width: 170,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // shadow color
              spreadRadius: 2, // how wide the shadow spreads
              blurRadius: 10, // softness of the shadow
              offset: Offset(0, 2), // position of the shadow (x, y)
            ),
          ],
          borderRadius: BorderRadius.circular(18),
          color: product.bgColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: product.id,
                    child: Image.asset(product.image, width: 120, height: 120),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(product.name, style: TextStyles.bodystyle()),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyles.bodystyle(color: AppColors.primaryColor),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.borderColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.add, color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
