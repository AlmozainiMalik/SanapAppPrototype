import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../admin_mainpage_page/admin_mainpage_page.dart';
import 'bloc/admin_mainpage_container_bloc.dart';
import 'models/admin_mainpage_container_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AdminMainpageContainerScreen extends StatelessWidget {
  AdminMainpageContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AdminMainpageContainerBloc>(
      create: (context) =>
          AdminMainpageContainerBloc(AdminMainpageContainerState(
        adminMainpageContainerModelObj: AdminMainpageContainerModel(),
      ))
            ..add(AdminMainpageContainerInitialEvent()),
      child: AdminMainpageContainerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminMainpageContainerBloc, AdminMainpageContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Navigator(
              key: navigatorKey,
              initialRoute: AppRoutes.adminMainpagePage,
              onGenerateRoute: (routeSetting) => PageRouteBuilder(
                pageBuilder: (ctx, ani, ani1) =>
                    getCurrentPage(context, routeSetting.name!),
                transitionDuration: Duration(seconds: 0),
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
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
}
