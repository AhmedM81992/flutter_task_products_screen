import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/core/utils/app_colors.dart';
import 'package:flutter_task/core/utils/app_images.dart';
import 'package:flutter_task/core/utils/app_strings.dart';

import '../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key});

  TextEditingController? _searchController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 405.w,
      height: 160.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 55.h,
          ),
          SvgPicture.asset(
            AppImages.logo,
          ),
          SizedBox(height: 19.h),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 350.w,
                  height: 50.h,
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.r),
                        borderSide:
                            BorderSide(width: 1.w, color: AppColors.blueColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.r),
                        borderSide:
                            BorderSide(width: 1.w, color: AppColors.blueColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.r),
                        borderSide:
                            BorderSide(width: 1.w, color: AppColors.blueColor),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(AppImages.search),
                      ),
                      hintStyle: Styles.hintStyle,
                      enabled: true,
                      hintText: AppStrings.searchHint,
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppImages.cart,
                    width: 25.w,
                    height: 25.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
