import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/admin_mainpage_container_screen/admin_mainpage_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/categorypage_screen/categorypage_screen.dart';
import '../presentation/locationpage_screen/locationpage_screen.dart';
import '../presentation/sign_in_page_screen/sign_in_page_screen.dart';
import '../presentation/sign_up_page_screen/sign_up_page_screen.dart';

class AppRoutes {
  static const String signInPageScreen = '/sign_in_page_screen';

  static const String adminMainpageContainerScreen =
      '/admin_mainpage_container_screen';

  static const String adminMainpagePage = '/admin_mainpage_page';

  static const String categorypageScreen = '/categorypage_screen';

  static const String locationpageScreen = '/locationpage_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        signInPageScreen: SignInPageScreen.builder,
        adminMainpageContainerScreen: AdminMainpageContainerScreen.builder,
        categorypageScreen: CategorypageScreen.builder,
        locationpageScreen: LocationpageScreen.builder,
        signUpPageScreen: SignUpPageScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SignInPageScreen.builder
      };
}
