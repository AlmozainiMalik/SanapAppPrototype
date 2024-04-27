part of 'sign_up_page_bloc.dart';

/// Represents the state of SignUpPage in the application.

// ignore_for_file: must_be_immutable
class SignUpPageState extends Equatable {
  SignUpPageState(
      {this.emailFieldController,
      this.passwordFieldController,
      this.phoneNumberFieldController,
      this.firstNameFieldController,
      this.lastNameFieldController,
      this.signUpPageModelObj});

  TextEditingController? emailFieldController;

  TextEditingController? passwordFieldController;

  TextEditingController? phoneNumberFieldController;

  TextEditingController? firstNameFieldController;

  TextEditingController? lastNameFieldController;

  SignUpPageModel? signUpPageModelObj;

  @override
  List<Object?> get props => [
        emailFieldController,
        passwordFieldController,
        phoneNumberFieldController,
        firstNameFieldController,
        lastNameFieldController,
        signUpPageModelObj
      ];
  SignUpPageState copyWith({
    TextEditingController? emailFieldController,
    TextEditingController? passwordFieldController,
    TextEditingController? phoneNumberFieldController,
    TextEditingController? firstNameFieldController,
    TextEditingController? lastNameFieldController,
    SignUpPageModel? signUpPageModelObj,
  }) {
    return SignUpPageState(
      emailFieldController: emailFieldController ?? this.emailFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      phoneNumberFieldController:
          phoneNumberFieldController ?? this.phoneNumberFieldController,
      firstNameFieldController:
          firstNameFieldController ?? this.firstNameFieldController,
      lastNameFieldController:
          lastNameFieldController ?? this.lastNameFieldController,
      signUpPageModelObj: signUpPageModelObj ?? this.signUpPageModelObj,
    );
  }
}
