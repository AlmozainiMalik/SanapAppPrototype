import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/admin_mainpage_container_model.dart';
part 'admin_mainpage_container_event.dart';
part 'admin_mainpage_container_state.dart';

/// A bloc that manages the state of a AdminMainpageContainer according to the event that is dispatched to it.
class AdminMainpageContainerBloc
    extends Bloc<AdminMainpageContainerEvent, AdminMainpageContainerState> {
  AdminMainpageContainerBloc(AdminMainpageContainerState initialState)
      : super(initialState) {
    on<AdminMainpageContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AdminMainpageContainerInitialEvent event,
    Emitter<AdminMainpageContainerState> emit,
  ) async {}
}
