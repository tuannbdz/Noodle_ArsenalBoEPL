import '../course_menu_page/widgets/courseone_item_widget.dart';
import '../course_menu_page/widgets/recommendations_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';
import 'package:tuan_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:tuan_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:tuan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:tuan_s_application2/widgets/custom_search_view.dart';
import 'package:tuan_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CourseMenuPage extends StatelessWidget {
  CourseMenuPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController howareyoutodayController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 39.v),
              _buildHowAreYouToday(context),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 22.v),
                  _buildRecommendations(context),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: CustomTextFormField(
                      controller: titleController,
                      hintText: "Choice your course",
                      hintStyle: CustomTextStyles.labelLargeMedium,
                      textInputAction: TextInputAction.done,
                      borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                      filled: true,
                      fillColor: appTheme.whiteA700,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 37.h),
                    child: Row(
                      children: [
                        _buildTabOn(
                          context,
                          userImage: ImageConstant.imgTabOnBackground,
                          userLabel: "All",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: _buildTabOn(
                            context,
                            userImage:
                                ImageConstant.imgTabOnBackgroundWhiteA700,
                            userLabel: "Yours",
                          ),
                        ),
                        Container(
                          height: 29.v,
                          width: 92.h,
                          margin: EdgeInsets.only(left: 16.h),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgTabOnBackgroundWhiteA700,
                                height: 29.v,
                                width: 92.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 21.h,
                                    top: 6.v,
                                  ),
                                  child: Text(
                                    "Current",
                                    style: CustomTextStyles.bodySmall8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.v),
                  _buildCourseOne(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHowAreYouToday(BuildContext context) {
    return SizedBox(
      height: 147.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 18.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    title: Container(
                      height: 53.999992.v,
                      width: 121.h,
                      margin: EdgeInsets.only(left: 16.h),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          AppbarTitle(
                            text: "Hi, Dat",
                          ),
                          AppbarSubtitle(
                            text: "Course",
                            margin: EdgeInsets.only(
                              right: 32.h,
                              bottom: 17.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  CustomTextFormField(
                    width: 198.h,
                    controller: howareyoutodayController,
                    hintText: "How are you today?",
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 76.v,
            width: 61.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 15.h),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomSearchView(
              width: 358.h,
              controller: searchController,
              hintText: "Find Course",
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendations(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 92.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return RecommendationsItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCourseOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 37.h,
          right: 17.h,
        ),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return CourseoneItemWidget();
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTabOn(
    BuildContext context, {
    required String userImage,
    required String userLabel,
  }) {
    return SizedBox(
      height: 29.v,
      width: 73.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 29.v,
            width: 73.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 6.v,
              ),
              child: Text(
                userLabel,
                style: CustomTextStyles.bodySmall8.copyWith(
                  color: appTheme.blueGray40002,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
