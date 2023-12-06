import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';
import 'package:tuan_s_application2/presentation/notification_screen_page/notification_screen_page.dart';

class NotificationScreenTabContainerScreen extends StatefulWidget {
  const NotificationScreenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationScreenTabContainerScreenState createState() =>
      NotificationScreenTabContainerScreenState();
}

class NotificationScreenTabContainerScreenState
    extends State<NotificationScreenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 67.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 99.v,
                  width: 302.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Message",
                          style: CustomTextStyles.titleLargeBluegray90001Bold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Dat",
                              style: theme.textTheme.displaySmall,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "How are you today?",
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 26.v,
                        width: 225.h,
                        margin: EdgeInsets.only(bottom: 16.v),
                        child: TabBar(
                          controller: tabviewController,
                          labelPadding: EdgeInsets.zero,
                          labelColor: appTheme.blueGray90001,
                          unselectedLabelColor: appTheme.blueGray90001,
                          tabs: [
                            Tab(
                              child: Text(
                                "Other user",
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Notification",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 693.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    NotificationScreenPage(),
                    NotificationScreenPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
