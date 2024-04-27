import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/admin_mainpage_model.dart';
part 'admin_mainpage_event.dart';
part 'admin_mainpage_state.dart';

/// A bloc that manages the state of a AdminMainpage according to the event that is dispatched to it.
class AdminMainpageBloc extends Bloc<AdminMainpageEvent, AdminMainpageState> {
  AdminMainpageBloc(AdminMainpageState initialState) : super(initialState) {
    on<AdminMainpageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AdminMainpageInitialEvent event,
    Emitter<AdminMainpageState> emit,
  ) async {}
}
