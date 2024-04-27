import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/sign_up_page_bloc.dart';
import 'models/sign_up_page_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpPageBloc>(
      create: (context) => SignUpPageBloc(SignUpPageState(
        signUpPageModelObj: SignUpPageModel(),
      ))
        ..add(SignUpPageInitialEvent()),
      child: SignUpPageScreen(),
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
                left: 51.h,
                top: 61.v,
                right: 51.h,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 181.h,
                      margin: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "msg_create_an_account".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.displaySmall!.copyWith(
                          height: 1.19,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildEmailField(context),
                  SizedBox(height: 31.v),
                  _buildPasswordField(context),
                  SizedBox(height: 31.v),
                  _buildPhoneNumberField(context),
                  SizedBox(height: 31.v),
                  _buildFirstNameField(context),
                  SizedBox(height: 31.v),
                  _buildLastNameField(context),
                  SizedBox(height: 48.v),
                  _buildSignUpButton(context),
                  SizedBox(height: 34.v),
                  Divider(
                    color: theme.colorScheme.secondaryContainer,
                  ),
                  SizedBox(height: 60.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 49.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "msg_already_have_an".tr,
                            style: CustomTextStyles.bodySmallGray800,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_sign_in2".tr,
                              style: CustomTextStyles.bodySmallBlue900,
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

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 9.h,
      ),
      child:
          BlocSelector<SignUpPageBloc, SignUpPageState, TextEditingController?>(
        selector: (state) => state.emailFieldController,
        builder: (context, emailFieldController) {
          return CustomTextFormField(
            controller: emailFieldController,
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
              maxHeight: 55.v,
            ),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 9.h,
      ),
      child:
          BlocSelector<SignUpPageBloc, SignUpPageState, TextEditingController?>(
        selector: (state) => state.passwordFieldController,
        builder: (context, passwordFieldController) {
          return CustomTextFormField(
            controller: passwordFieldController,
            hintText: "lbl_password".tr,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 17.v,
              ),
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
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 9.h,
      ),
      child:
          BlocSelector<SignUpPageBloc, SignUpPageState, TextEditingController?>(
        selector: (state) => state.phoneNumberFieldController,
        builder: (context, phoneNumberFieldController) {
          return CustomTextFormField(
            controller: phoneNumberFieldController,
            hintText: "lbl_phone_number".tr,
            textInputType: TextInputType.phone,
            prefix: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 17.v,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 55.v,
            ),
            validator: (value) {
              if (!isValidPhone(value)) {
                return "err_msg_please_enter_valid_phone_number".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 9.h,
      ),
      child:
          BlocSelector<SignUpPageBloc, SignUpPageState, TextEditingController?>(
        selector: (state) => state.firstNameFieldController,
        builder: (context, firstNameFieldController) {
          return CustomTextFormField(
            controller: firstNameFieldController,
            hintText: "lbl_first_name".tr,
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
              maxHeight: 55.v,
            ),
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLastNameField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 9.h,
      ),
      child:
          BlocSelector<SignUpPageBloc, SignUpPageState, TextEditingController?>(
        selector: (state) => state.lastNameFieldController,
        builder: (context, lastNameFieldController) {
          return CustomTextFormField(
            controller: lastNameFieldController,
            hintText: "lbl_last_name".tr,
            textInputAction: TextInputAction.done,
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
              maxHeight: 55.v,
            ),
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_sign_up".tr,
    );
  }
}
