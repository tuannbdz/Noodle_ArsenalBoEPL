import '../freshman_course_screen_page/widgets/freshmancoursescreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FreshmanCourseScreenPage extends StatelessWidget {
  const FreshmanCourseScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                SizedBox(height: 46.v),
                Text(
                  "Freshman’s Courses",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 17.v),
                _buildLearnedToday(context),
                SizedBox(height: 47.v),
                _buildFreshmanCourseScreen(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLearnedToday(BuildContext context) {
    return Container(
      width: 355.h,
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Process",
            style: CustomTextStyles.bodyLargeBluegray40002,
          ),
          SizedBox(height: 3.v),
          Row(
            children: [
              Text(
                "14",
                style: CustomTextStyles.titleLargeBluegray90001Bold,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 6.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "/ 14 courses",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle30,
            height: 6.v,
            width: 304.h,
            radius: BorderRadius.circular(
              3.h,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFreshmanCourseScreen(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 196.v,
            crossAxisCount: 2,
            mainAxisSpacing: 15.h,
            crossAxisSpacing: 15.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return FreshmancoursescreenItemWidget();
          },
        ),
      ),
    );
  }
}
