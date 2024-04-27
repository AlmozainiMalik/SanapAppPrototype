part of 'admin_mainpage_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AdminMainpageContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AdminMainpageContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AdminMainpageContainer widget is first created.
class AdminMainpageContainerInitialEvent extends AdminMainpageContainerEvent {
  @override
  List<Object?> get props => [];
}
