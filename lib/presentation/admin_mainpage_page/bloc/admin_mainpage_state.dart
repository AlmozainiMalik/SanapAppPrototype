part of 'admin_mainpage_bloc.dart';

/// Represents the state of AdminMainpage in the application.

// ignore_for_file: must_be_immutable
class AdminMainpageState extends Equatable {
  AdminMainpageState({this.adminMainpageModelObj});

  AdminMainpageModel? adminMainpageModelObj;

  @override
  List<Object?> get props => [adminMainpageModelObj];
  AdminMainpageState copyWith({AdminMainpageModel? adminMainpageModelObj}) {
    return AdminMainpageState(
      adminMainpageModelObj:
          adminMainpageModelObj ?? this.adminMainpageModelObj,
    );
  }
}
