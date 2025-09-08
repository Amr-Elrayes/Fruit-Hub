import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_images.dart';
import 'package:fruit_hub/core/functions/navigation.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_buttom.dart';
import 'package:fruit_hub/features/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 60,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 430,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: Image.asset(
                  AppImages.fruits,
                  fit: BoxFit.contain,
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: TextStyles.titlestyle(fontSize: 20),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "We deliver the best and freshest fruit salad in\ntown. Order for a combo today!!!",
                    style: TextStyles.smallstyle(
                      fontSize: 16,
                      fontweight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 60),
                  customButtom(
                    txt: "Let’s Continue",
                    onPressed: () {
                      pushAndRemoveUntil(context, HomeScreen());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
