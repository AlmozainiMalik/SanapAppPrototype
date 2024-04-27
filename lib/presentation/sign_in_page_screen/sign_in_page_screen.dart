import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/sign_in_page_bloc.dart';
import 'models/sign_in_page_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignInPageScreen extends StatelessWidget {
  SignInPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInPageBloc>(
      create: (context) => SignInPageBloc(SignInPageState(
        signInPageModelObj: SignInPageModel(),
      ))
        ..add(SignInPageInitialEvent()),
      child: SignInPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 50.h,
                top: 65.v,
                right: 50.h,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup3,
                    height: 164.adaptSize,
                    width: 164.adaptSize,
                  ),
                  SizedBox(height: 44.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    child: BlocSelector<SignInPageBloc, SignInPageState,
                        TextEditingController?>(
                      selector: (state) => state.emailController,
                      builder: (context, emailController) {
                        return CustomTextFormField(
                          controller: emailController,
                          hintText: "lbl_email".tr,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 11.h,
                              vertical: 15.v,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUserGray70002,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 54.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    child: BlocSelector<SignInPageBloc, SignInPageState,
                        TextEditingController?>(
                      selector: (state) => state.passwordController,
                      builder: (context, passwordController) {
                        return CustomTextFormField(
                          controller: passwordController,
                          hintText: "lbl_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(15.h, 17.v, 11.h, 18.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgTrophy,
                              height: 20.v,
                              width: 16.h,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 55.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                          obscureText: true,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "msg_forgot_password".tr,
                      style: CustomTextStyles.bodySmallBlue900_1,
                    ),
                  ),
                  SizedBox(height: 25.v),
                  CustomOutlinedButton(
                    text: "lbl_sign_in".tr,
                    margin: EdgeInsets.symmetric(horizontal: 2.h),
                  ),
                  SizedBox(height: 34.v),
                  Divider(
                    color: theme.colorScheme.secondaryContainer,
                    indent: 2.h,
                    endIndent: 2.h,
                  ),
                  SizedBox(height: 50.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 64.h,
                        right: 15.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "msg_don_t_have_an_account".tr,
                            style: CustomTextStyles.bodySmallGray800,
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapTxtCreatenewone(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_create_new_one".tr,
                                style: CustomTextStyles.bodySmallBlue900,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the signUpPageScreen when the action is triggered.
  onTapTxtCreatenewone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpPageScreen,
    );
  }
}
