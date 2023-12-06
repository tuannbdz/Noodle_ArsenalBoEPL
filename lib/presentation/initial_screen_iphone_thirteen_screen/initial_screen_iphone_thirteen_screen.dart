import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

class InitialScreenIphoneThirteenScreen extends StatelessWidget {
  const InitialScreenIphoneThirteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo5001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame53,
                height: 199.v,
                width: 232.h,
                alignment: Alignment.centerRight,
              ),
              Spacer(
                flex: 59,
              ),
              _buildFrameThirtySeven(context),
              Spacer(
                flex: 40,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 245.v,
                width: 388.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirtySeven(BuildContext context) {
    return SizedBox(
      height: 146.v,
      width: 364.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSkTelecomT1Seeklogo,
            height: 146.v,
            width: 207.h,
            alignment: Alignment.centerLeft,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 34.v),
              child: Text(
                "Noodle",
                style: theme.textTheme.displayLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
