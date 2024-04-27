part of 'categorypage_bloc.dart';

/// Represents the state of Categorypage in the application.

// ignore_for_file: must_be_immutable
class CategorypageState extends Equatable {
  CategorypageState({this.categorypageModelObj});

  CategorypageModel? categorypageModelObj;

  @override
  List<Object?> get props => [categorypageModelObj];
  CategorypageState copyWith({CategorypageModel? categorypageModelObj}) {
    return CategorypageState(
      categorypageModelObj: categorypageModelObj ?? this.categorypageModelObj,
    );
  }
}
