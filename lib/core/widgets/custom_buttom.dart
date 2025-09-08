import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

// ignore: must_be_immutable
class customButtom extends StatelessWidget {
  customButtom({
    super.key,
    required this.txt,
    required this.onPressed,
    this.color = AppColors.primaryColor,
    this.txtColor = AppColors.whiteColor,
    this.icon,
    this.height = 70,
    this.width = double.infinity,
  });
  final String txt;
  final Function() onPressed;
  Color color;
  Color txtColor;
  IconData? icon;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(icon, color: AppColors.primaryColor, size: 25),
            ),
            Center(
              child: Text(
                txt,
                style: TextStyle(
                  color: txtColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: "poppins",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
