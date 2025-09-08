import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_buttom.dart';
import 'package:fruit_hub/features/details/widgets/image_container.dart';
import 'package:fruit_hub/features/home/models/product_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key, required this.product});
  final ProductModel product;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;
  bool isExpanded = false;
  late double price;
  int copies = 1;
  @override
  void initState() {
    super.initState();
    price = widget.product.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageContainer(widget: widget),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        widget.product.name,
                        style: TextStyles.titlestyle(fontSize: 32),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (copies > 1) {
                                  copies--;
                                  widget.product.price -= price;
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: AppColors.grayColor),
                              ),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grayColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            copies.toString(),
                            style: TextStyles.bodystyle(),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                copies++;
                                widget.product.price += price;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.borderColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(
                                Icons.add,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$${widget.product.price}",
                        style: TextStyles.titlestyle(fontSize: 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(color: AppColors.searchColor, thickness: 1),
                  SizedBox(height: 10),
                  Text(
                    "One Pack Contains:",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 200,
                      height: 3,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                    style: TextStyles.smallstyle(
                      color: AppColors.darkColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: AppColors.searchColor, thickness: 1),
                  Text(
                    "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make",
                    style: TextStyles.smallstyle(
                      color: AppColors.darkColor,
                      fontweight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.borderColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: customButtom(
                          height: 60,
                          txt: "Add to basket",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
