part of 'sign_in_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SignInPageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SignInPage widget is first created.
class SignInPageInitialEvent extends SignInPageEvent {
  @override
  List<Object?> get props => [];
}
