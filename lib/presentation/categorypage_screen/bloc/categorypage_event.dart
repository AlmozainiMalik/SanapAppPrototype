part of 'categorypage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Categorypage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CategorypageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Categorypage widget is first created.
class CategorypageInitialEvent extends CategorypageEvent {
  @override
  List<Object?> get props => [];
}
