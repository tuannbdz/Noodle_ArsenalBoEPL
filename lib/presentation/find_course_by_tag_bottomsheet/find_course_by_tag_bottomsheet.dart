import '../find_course_by_tag_bottomsheet/widgets/findcoursebytaggrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FindCourseByTagBottomsheet extends StatelessWidget {
  const FindCourseByTagBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 27.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL52,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconClose,
                    height: 17.v,
                    width: 14.h,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 8.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 105.h),
                    child: Text(
                      "Search Filter",
                      style: CustomTextStyles.titleLargeBluegray90001,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 46.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "Categories",
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 18.v),
            _buildTagsOnRow(context),
            SizedBox(height: 27.v),
            _buildTagsOnRow1(context),
            SizedBox(height: 27.v),
            _buildTagsOnRow2(context),
            SizedBox(height: 30.v),
            _buildTagsOnRow3(context),
            SizedBox(height: 19.v),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "Year",
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 23.v),
            _buildFindCourseByTagGrid(context),
            SizedBox(height: 15.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTagsOnRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTagsOnBackground(
            context,
            userTags: "Data",
          ),
          SizedBox(
            height: 43.v,
            width: 131.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTagsOnBackgroundGray10043x131,
                  height: 43.v,
                  width: 131.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      top: 10.v,
                    ),
                    child: Text(
                      "Software",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 43.v,
            width: 97.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTagsOnBackgroundGray100,
                  height: 43.v,
                  width: 97.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Network",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTagsOnRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 43.v,
            width: 92.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTagsOnBackground,
                  height: 43.v,
                  width: 92.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Systems",
                    style: CustomTextStyles.bodySmallWhiteA700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 43.v,
            width: 108.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTagsOnBackgroundGray10043x131,
                  height: 43.v,
                  width: 108.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Security",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 43.v,
            width: 117.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTagsOnBackgroundGray10043x131,
                  height: 43.v,
                  width: 117.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Text(
                      "Windows",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTagsOnRow2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTagsOnBackground(
            context,
            userTags: "Design",
          ),
          _buildTagsOnBackground1(
            context,
            securityLabel: "Security",
          ),
          SizedBox(
            height: 43.v,
            width: 114.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTagsOnBackgroundGray10043x131,
                  height: 43.v,
                  width: 114.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Text(
                      "Windows",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTagsOnRow3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        children: [
          _buildTagsOnBackground(
            context,
            userTags: "Web",
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: _buildTagsOnBackground1(
              context,
              securityLabel: "Security",
            ),
          ),
          Container(
            height: 43.v,
            width: 119.h,
            margin: EdgeInsets.only(left: 21.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTagsOnBackgroundGray10043x131,
                  height: 43.v,
                  width: 119.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Windows",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFindCourseByTagGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 111.h,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 44.v,
          crossAxisCount: 2,
          mainAxisSpacing: 22.h,
          crossAxisSpacing: 22.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return FindcoursebytaggridItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildTagsOnBackground(
    BuildContext context, {
    required String userTags,
  }) {
    return SizedBox(
      height: 43.v,
      width: 94.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTagsOnBackground,
            height: 43.v,
            width: 94.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              userTags,
              style: CustomTextStyles.bodySmallWhiteA700.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTagsOnBackground1(
    BuildContext context, {
    required String securityLabel,
  }) {
    return SizedBox(
      height: 43.v,
      width: 110.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTagsOnBackgroundGray10043x131,
            height: 43.v,
            width: 110.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              securityLabel,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.blueGray40002,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
