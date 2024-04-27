import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../admin_mainpage_page/admin_mainpage_page.dart';
import 'bloc/categorypage_bloc.dart';
import 'models/categorypage_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CategorypageScreen extends StatelessWidget {
  CategorypageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CategorypageBloc>(
      create: (context) => CategorypageBloc(CategorypageState(
        categorypageModelObj: CategorypageModel(),
      ))
        ..add(CategorypageInitialEvent()),
      child: CategorypageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategorypageBloc, CategorypageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAdminManagement(context),
                  SizedBox(height: 18.v),
                  _buildContentAddition(context),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
            bottomNavigationBar: _buildBottombar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAdminManagement(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.v),
            child: Text(
              "lbl2".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightUndefined,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 8.v,
              bottom: 4.v,
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
  Widget _buildContentAddition(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.h),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 29.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "lbl6".tr,
            style: CustomTextStyles.bodySmallGray700,
          ),
          SizedBox(height: 40.v),
          SizedBox(
            height: 29.v,
            width: 389.h,
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
                          ),
                          Spacer(),
                          Text(
                            "lbl7".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            margin: EdgeInsets.only(left: 11.h),
                          )
                        ],
                      ),
                      SizedBox(height: 6.v),
                      Divider()
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 21.v,
                    width: 112.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 46.v),
          SizedBox(
            height: 28.v,
            width: 388.h,
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
                          ),
                          Spacer(),
                          Text(
                            "lbl8".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGrid,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            margin: EdgeInsets.only(left: 10.h),
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
                    height: 22.v,
                    width: 86.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 87.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
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
