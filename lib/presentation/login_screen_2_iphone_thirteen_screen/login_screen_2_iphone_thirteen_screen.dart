import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';
import 'package:tuan_s_application2/widgets/custom_elevated_button.dart';
import 'package:tuan_s_application2/widgets/custom_text_form_field.dart';

class LoginScreen2IphoneThirteenScreen extends StatelessWidget {
  LoginScreen2IphoneThirteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 17.v),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle35,
                  height: 141.v,
                  width: 390.h,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "Username",
                      style: CustomTextStyles.headlineSmallBluegray400,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "21127590",
                      style: CustomTextStyles.titleLargeBlack900,
                    ),
                  ),
                ),
                Divider(
                  indent: 54.h,
                  endIndent: 48.h,
                ),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "Password",
                      style: CustomTextStyles.headlineSmallBluegray400,
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  height: 40.v,
                  width: 287.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomTextFormField(
                        width: 287.h,
                        controller: passwordController,
                        hintText: "*********",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        alignment: Alignment.center,
                        obscureText: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 1.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup26x26,
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          right: 6.h,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 44.v),
                CustomElevatedButton(
                  width: 131.h,
                  text: "Log In",
                ),
                SizedBox(height: 32.v),
                Text(
                  "Forgotten your username or password?",
                  style: CustomTextStyles.titleMediumIndigo400.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 71.v),
                Text(
                  "Contact us",
                  style: CustomTextStyles.headlineSmallBlack900,
                ),
                SizedBox(height: 15.v),
                Text(
                  "227 Nguyen Van Cu, District 5, Ho Chi Minh city, Vietnam",
                  style: CustomTextStyles.labelLargeGray40001,
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(
                        top: 3.v,
                        bottom: 1.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "(028) 3835 4266",
                        style: CustomTextStyles.labelLargeGray40001,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 101.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClarityEmailSolid,
                          height: 19.adaptSize,
                          width: 19.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "info@fit.hcmus.edu.vn",
                            style:
                                CustomTextStyles.labelLargeGray40001.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
