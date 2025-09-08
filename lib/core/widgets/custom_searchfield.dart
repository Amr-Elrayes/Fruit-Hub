import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class customSearchfield extends StatelessWidget {
  const customSearchfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.grayColor,
      ),
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: AppColors.darkColor, size: 30),
        filled: true,
        fillColor: AppColors.searchColor,
        hintText: "Search Store",
        hintStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.grayColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.searchColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
        ),
      ),
    );
  }
}
