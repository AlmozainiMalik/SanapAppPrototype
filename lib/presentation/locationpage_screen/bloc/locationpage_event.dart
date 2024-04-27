part of 'locationpage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Locationpage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LocationpageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Locationpage widget is first created.
class LocationpageInitialEvent extends LocationpageEvent {
  @override
  List<Object?> get props => [];
}
