import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/core/utils/app_colors.dart';
import 'package:flutter_task/core/utils/app_images.dart';

import '../../../../core/utils/styles.dart';
import '../../data/model/products_model.dart';

class CardItemsWidget extends StatelessWidget {
  final int index;
  final ProductsModel? productModel;
  CardItemsWidget({super.key, required this.index, this.productModel});

  @override
  Widget build(BuildContext context) {
    var product = productModel?.products?[index];
    print("Image URL ${product?.images?.first}");
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(product?.images?.first ?? ""),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                )),
            child: Container(
              alignment: Alignment.topRight,
              width: double.infinity,
              height: 128.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Stack(
                  children: [
                    Positioned(
                      right: -15,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          elevation: 4,
                          alignment: Alignment.centerRight,
                          minimumSize: Size(30, 30),
                          maximumSize: Size(100, 100),
                        ),
                        child: SvgPicture.asset(
                          AppImages.fav,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w, top: 8.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nike Air Jordon",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.cardStyle,
                ),
                Text(
                  "Nike Air Jordon",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.cardStyle,
                ),
                Container(
                  height: 50.h,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 3.h,
                        child: Row(
                          children: [
                            Text(
                              "EGP",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Styles.cardStyle,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "1,800",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Styles.cardStyle,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "2100",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Styles.discountStyle,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        child: Row(
                          children: [
                            Text(
                              "Review (4.8)",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Styles.reviewStyle,
                            ),
                            SizedBox(width: 3.w),
                            SvgPicture.asset(AppImages.star)
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 3.h,
                        right: 5.w,
                        child: Container(
                          alignment: Alignment.center,
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80.r),
                            color: AppColors.blueColor,
                          ),
                          child: Icon(
                            CupertinoIcons.plus,
                            size: 30,
                            color: AppColors.backGround,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
