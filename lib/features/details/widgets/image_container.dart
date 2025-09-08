import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';
import 'package:fruit_hub/features/details/details_screen.dart';

class imageContainer extends StatelessWidget {
  const imageContainer({super.key, required this.widget});

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
      height: 330,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: AppColors.darkColor,
                    ),
                    Text(
                      "Go Back",
                      style: TextStyles.smallstyle(color: AppColors.darkColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Hero(
            tag: widget.product.id,
            child: Image.asset(
              widget.product.image,
              width: 330,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
