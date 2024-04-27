part of 'admin_mainpage_container_bloc.dart';

/// Represents the state of AdminMainpageContainer in the application.

// ignore_for_file: must_be_immutable
class AdminMainpageContainerState extends Equatable {
  AdminMainpageContainerState({this.adminMainpageContainerModelObj});

  AdminMainpageContainerModel? adminMainpageContainerModelObj;

  @override
  List<Object?> get props => [adminMainpageContainerModelObj];
  AdminMainpageContainerState copyWith(
      {AdminMainpageContainerModel? adminMainpageContainerModelObj}) {
    return AdminMainpageContainerState(
      adminMainpageContainerModelObj:
          adminMainpageContainerModelObj ?? this.adminMainpageContainerModelObj,
    );
  }
}
