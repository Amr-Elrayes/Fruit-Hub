import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_searchfield.dart';
import 'package:fruit_hub/features/home/widgets/filtered_items.dart';
import 'package:fruit_hub/features/home/widgets/recommended_combo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded, size: 30, color: AppColors.darkColor),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Icon(
                  Icons.shopping_basket_outlined,
                  size: 30,
                  color: AppColors.primaryColor,
                ),
                Text("My Basket", style: TextStyles.smallstyle(fontSize: 10)),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hello Tony, ",
                    style: TextStyles.smallstyle(
                      color: AppColors.darkColor,
                      fontweight: FontWeight.w400,
                    ),
                  ),
                  Text("What fruit salad", style: TextStyles.bodystyle()),
                ],
              ),
              Text("combo do you want today?", style: TextStyles.bodystyle()),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(child: customSearchfield()),
                  SizedBox(width: 40),
                  Icon(Icons.tune_outlined),
                ],
              ),
              SizedBox(height: 40),
              Recommended_Combo(),
              SizedBox(height: 40),
              Row(
                children: [
                  Text("Hottest", style: TextStyles.titlestyle(fontSize: 24)),
                  SizedBox(width: 30),
                  Text("Popular", style: TextStyles.smallstyle()),
                  SizedBox(width: 30),
                  Text("New combo", style: TextStyles.smallstyle()),
                  SizedBox(width: 30),
                  Text("Top", style: TextStyles.smallstyle()),
                ],
              ),
              SizedBox(height: 20),
              FilteredItems(),
            ],
          ),
        ),
      ),
    );
  }
}
