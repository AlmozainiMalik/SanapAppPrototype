import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/locationpage_model.dart';
part 'locationpage_event.dart';
part 'locationpage_state.dart';

/// A bloc that manages the state of a Locationpage according to the event that is dispatched to it.
class LocationpageBloc extends Bloc<LocationpageEvent, LocationpageState> {
  LocationpageBloc(LocationpageState initialState) : super(initialState) {
    on<LocationpageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LocationpageInitialEvent event,
    Emitter<LocationpageState> emit,
  ) async {}
}
