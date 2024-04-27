import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../admin_mainpage_page/admin_mainpage_page.dart';
import 'bloc/locationpage_bloc.dart';
import 'models/locationpage_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LocationpageScreen extends StatelessWidget {
  LocationpageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<LocationpageBloc>(
      create: (context) => LocationpageBloc(LocationpageState(
        locationpageModelObj: LocationpageModel(),
      ))
        ..add(LocationpageInitialEvent()),
      child: LocationpageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationpageBloc, LocationpageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAdminManagementRow(context),
                  SizedBox(height: 18.v),
                  _buildAddAndEditLocationColumn(context),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAdminManagementRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14.v),
            child: Text(
              "lbl3".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightUndefined,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 9.v,
              bottom: 5.v,
            ),
            onTap: () {
              onTapImgArrowrightone(context);
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddAndEditLocationColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 29.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Text(
              "msg5".tr,
              style: CustomTextStyles.bodySmallGray700,
            ),
          ),
          SizedBox(height: 40.v),
          Container(
            height: 28.v,
            width: 388.h,
            margin: EdgeInsets.only(right: 4.h),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 20.v,
                            width: 10.h,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Spacer(),
                          Text(
                            "lbl9".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPlus,
                            height: 19.v,
                            width: 17.h,
                            margin: EdgeInsets.only(
                              left: 13.h,
                              bottom: 2.v,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 4.v),
                      Divider()
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 22.v,
                    width: 95.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 45.v),
          SizedBox(
            height: 30.v,
            width: 394.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 20.v,
                            width: 10.h,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 2.v,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "lbl10".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFrameBlue90024x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 13.h),
                          )
                        ],
                      ),
                      SizedBox(height: 3.v),
                      Divider(
                        endIndent: 6.h,
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 25.v,
                    width: 102.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 38.v),
          Container(
            height: 30.v,
            width: 390.h,
            margin: EdgeInsets.only(right: 3.h),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 20.v,
                            width: 10.h,
                            margin: EdgeInsets.only(top: 3.v),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              "lbl_qr_code".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgQrCodeUndefined,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 9.h),
                          )
                        ],
                      ),
                      SizedBox(height: 5.v),
                      Divider()
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 24.v,
                    width: 129.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 18.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settingsundefined:
        return AppRoutes.adminMainpagePage;
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Thumbsup:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.adminMainpagePage:
        return AdminMainpagePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the adminMainpageContainerScreen when the action is triggered.
  onTapImgArrowrightone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.adminMainpageContainerScreen,
    );
  }
}
