import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/categorypage_model.dart';
part 'categorypage_event.dart';
part 'categorypage_state.dart';

/// A bloc that manages the state of a Categorypage according to the event that is dispatched to it.
class CategorypageBloc extends Bloc<CategorypageEvent, CategorypageState> {
  CategorypageBloc(CategorypageState initialState) : super(initialState) {
    on<CategorypageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategorypageInitialEvent event,
    Emitter<CategorypageState> emit,
  ) async {}
}
