part of 'locationpage_bloc.dart';

/// Represents the state of Locationpage in the application.

// ignore_for_file: must_be_immutable
class LocationpageState extends Equatable {
  LocationpageState({this.locationpageModelObj});

  LocationpageModel? locationpageModelObj;

  @override
  List<Object?> get props => [locationpageModelObj];
  LocationpageState copyWith({LocationpageModel? locationpageModelObj}) {
    return LocationpageState(
      locationpageModelObj: locationpageModelObj ?? this.locationpageModelObj,
    );
  }
}
