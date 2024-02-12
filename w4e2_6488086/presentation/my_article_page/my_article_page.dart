import 'package:flutter/material.dart';
import 'package:ntnc_s_application5/core/app_export.dart';
import 'package:ntnc_s_application5/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class MyArticlePage extends StatelessWidget {
  const MyArticlePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Container(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 101.v,
              right: 22.h,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "My Article",
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ),
                SizedBox(height: 75.v),
                _buildArticleDetails(context),
                SizedBox(height: 36.v),
                CustomOutlinedButton(
                  width: 177.h,
                  text: "Add Article",
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArticleDetails(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 174.h,
                  child: Text(
                    "The One Part of the Vision Pro \nThat Apple Doesn’t Want You to See",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  "Upload On 22/1/2024 3.20 pm",
                  style: CustomTextStyles.interBlack900,
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 151.h,
                  child: Text(
                    "APPLE’S NEW VISION Pro mixed-reality \nheadset goes on sale tomorrow, and\n the hype cycle has officially begun....",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage11,
            height: 86.v,
            width: 101.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }
}
